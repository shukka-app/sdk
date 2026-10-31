#!/usr/bin/env node
/**
 * Publishing dry run. No credentials, no uploads: it checks what each registry
 * would receive.
 *
 *   node scripts/test-publish.mjs
 *   node scripts/test-publish.mjs npm dart   # a subset
 */
import { execFileSync, spawnSync } from 'node:child_process'
import { dirname, join, resolve } from 'node:path'
import { fileURLToPath } from 'node:url'

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..')
const names = ['npm', 'dart', 'rust', 'swift']
const selected = process.argv.slice(2).filter((arg) => !arg.startsWith('-'))
const targets = selected.length > 0 ? selected : names

for (const name of targets) {
  if (!names.includes(name)) {
    console.error(`Unknown target "${name}". Known: ${names.join(', ')}`)
    process.exit(1)
  }
}

function run(command, args, cwd, { capture = false } = {}) {
  console.log(`\n$ ${command} ${args.join(' ')}`)
  const result = execFileSync(command, args, {
    cwd,
    encoding: 'utf8',
    stdio: capture ? ['ignore', 'pipe', 'inherit'] : 'inherit',
  })
  return capture ? result : ''
}

function expect(condition, message) {
  if (!condition) throw new Error(message)
}

const checks = {
  npm() {
    run('pnpm', ['--filter', '@shukka/sdk', 'build'], root)

    const [tarball] = JSON.parse(run('npm', ['pack', '--dry-run', '--json'], join(root, 'packages', 'typescript'), { capture: true }))
    const files = tarball.files.map((file) => file.path).sort()
    console.log(`tarball contents: ${files.join(', ')}`)
    const unexpected = files.filter(
      (file) => !file.startsWith('dist/') && !['LICENSE', 'README.md', 'package.json'].includes(file),
    )
    expect(unexpected.length === 0, `npm tarball ships unexpected files: ${unexpected.join(', ')}`)
    expect(files.some((file) => file === 'LICENSE'), 'npm tarball has no LICENSE')

    run('pnpm', ['--filter', '@shukka/sdk', 'publish', '--dry-run', '--no-git-checks', '--access', 'public'], root)
  },

  dart() {
    const pkg = join(root, 'packages', 'dart')
    run('dart', ['pub', 'get'], pkg)
    const result = spawnSync('dart', ['pub', 'publish', '--dry-run'], { cwd: pkg, encoding: 'utf8' })
    if (result.stdout) process.stdout.write(result.stdout)
    if (result.stderr) process.stderr.write(result.stderr)
    if (result.status === 0) return

    // A dirty working tree is expected while iterating locally; CI checks out
    // clean. Everything else is a real publishing problem.
    const issues = `${result.stdout ?? ''}${result.stderr ?? ''}`
      .split('\n')
      .map((line) => line.trim())
      .filter((line) => line.startsWith('* '))
    const onlyDirty = issues.length > 0 && issues.every((line) => line.includes('checked-in files are modified in git'))
    if (!onlyDirty) throw new Error(`dart pub publish --dry-run failed (exit ${result.status})`)
    console.log('dart: ignoring "modified in git" because the working tree is dirty; rerun after committing')
  },

  rust() {
    run('cargo', ['publish', '--dry-run', '--allow-dirty'], join(root, 'packages', 'rust'))
  },

  swift() {
    run('swift', ['package', 'describe'], join(root, 'packages', 'swift'))
  },
}

for (const name of targets) {
  console.log(`\n=== ${name} ===`)
  checks[name]()
}

console.log(`\nPublishing dry run passed: ${targets.join(', ')}`)
