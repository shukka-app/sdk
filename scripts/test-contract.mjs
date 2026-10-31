#!/usr/bin/env node
/**
 * Runs the contract tests: start a throwaway Shukka + S3, publish one Tauri
 * release, then make every generated SDK read it back.
 *
 *   node scripts/test-contract.mjs                 # all four languages
 *   node scripts/test-contract.mjs typescript dart # just these
 *   node scripts/test-contract.mjs --keep          # leave the stack running
 *   node scripts/test-contract.mjs --no-docker     # reuse an instance from env
 *
 * Requires Docker and the toolchains of the languages you select. Everything
 * the runners see is passed through SHUKKA_CONTRACT_* environment variables.
 */
import { execFileSync, spawnSync } from 'node:child_process'
import { dirname, join, resolve } from 'node:path'
import { fileURLToPath } from 'node:url'

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..')
const composeFile = join(root, 'docker-compose.contract.yml')
const languages = ['typescript', 'dart', 'rust', 'swift']
const options = { keep: false, docker: true, langs: [] }

for (const arg of process.argv.slice(2)) {
  if (arg === '--keep') options.keep = true
  else if (arg === '--no-docker') options.docker = false
  else if (arg === 'all') options.langs = languages
  else if (languages.includes(arg)) options.langs.push(arg)
  else {
    console.error(`Unknown argument "${arg}". Use ${languages.join(' | ')} | --keep | --no-docker`)
    process.exit(1)
  }
}
if (options.langs.length === 0) options.langs = languages

const port = process.env.SHUKKA_CONTRACT_PORT ?? '3000'
const url = (process.env.SHUKKA_CONTRACT_URL ?? `http://localhost:${port}`).replace(/\/+$/, '')

function compose(args, { capture = false } = {}) {
  return execFileSync('docker', ['compose', '-f', composeFile, ...args], {
    cwd: root,
    env: process.env,
    encoding: 'utf8',
    stdio: capture ? ['ignore', 'pipe', 'inherit'] : 'inherit',
  })
}

function run(command, args, cwd, env) {
  console.log(`\n$ ${command} ${args.join(' ')}`)
  execFileSync(command, args, { cwd, env, stdio: 'inherit' })
}

async function waitFor(target, timeoutMs, label, ready = (response) => response.ok) {
  const deadline = Date.now() + timeoutMs
  while (Date.now() < deadline) {
    try {
      const response = await fetch(target, { signal: AbortSignal.timeout(5_000) })
      if (ready(response)) return
    } catch {
      // not up yet
    }
    await new Promise((resolveWait) => setTimeout(resolveWait, 1_000))
  }
  throw new Error(`Timed out after ${timeoutMs / 1000}s waiting for ${label ?? target}`)
}

/** `docker compose run` may prepend its own lines; the fixture prints one JSON line. */
function lastJson(output) {
  const line = output
    .split('\n')
    .map((entry) => entry.trim())
    .filter((entry) => entry.startsWith('{'))
    .at(-1)
  if (!line) throw new Error(`No JSON result in output:\n${output}`)
  return JSON.parse(line)
}

let running = false
try {
  if (options.docker) {
    console.log('Starting Shukka + S3')
    compose(['up', '-d', '--remove-orphans', '--quiet-pull'])
    running = true
    // An anonymous request is rejected with 403; any answer means Jetty is up.
    await waitFor('http://localhost:9000/', 120_000, 'S3', (response) => response.status < 500)
    // createApp probes the bucket with a PUT, so it has to exist first. s3proxy's
    // filesystem backend maps buckets to directories.
    compose(['exec', '-T', 's3', 'mkdir', '-p', `/data/${process.env.S3_BUCKET ?? 'releases'}`])
    await waitFor(`${url}/api/health`, 180_000, 'Shukka')
  }

  console.log('\nProvisioning')
  const provision = lastJson(compose(['run', '--rm', '-T', 'publisher', '/contract/provision.mjs'], { capture: true }))

  console.log('\nPublishing a release')
  const publish = lastJson(
    compose(
      ['run', '--rm', '-T', '-e', `SHUKKA_CONTRACT_KEY=${provision.apiKey}`, 'publisher', '/contract/publish.mjs'],
      { capture: true },
    ),
  )

  const env = {
    ...process.env,
    SHUKKA_CONTRACT_URL: url,
    SHUKKA_CONTRACT_APP: publish.app,
    SHUKKA_CONTRACT_CHANNEL: publish.channel,
    SHUKKA_CONTRACT_VERSION: publish.version,
    SHUKKA_CONTRACT_KEY: provision.apiKey,
    SHUKKA_CONTRACT_NOTE: publish.markdown,
  }

  for (const language of options.langs) {
    console.log(`\n=== ${language} ===`)
    if (language === 'typescript') {
      run('pnpm', ['--filter', '@shukka/sdk', 'build'], root, env)
      run('node', [join(root, 'tests', 'contract', 'typescript.mjs')], root, env)
    } else if (language === 'dart') {
      const cwd = join(root, 'tests', 'contract', 'dart')
      run('dart', ['pub', 'get'], cwd, env)
      run('dart', ['run', 'bin/contract.dart'], cwd, env)
    } else if (language === 'rust') {
      run('cargo', ['test', '--test', 'contract', '--', '--nocapture'], join(root, 'packages', 'rust'), env)
    } else if (language === 'swift') {
      run('swift', ['test', '--filter', 'ContractTests'], join(root, 'packages', 'swift'), env)
    }
  }

  console.log('\nArtifact download redirects instead of inlining the body')
  const artifactUrl = `${url}/api/update/${publish.app}/${publish.channel}/${publish.artifact}`
  const response = await fetch(artifactUrl, { redirect: 'manual' })
  if (response.status !== 302) throw new Error(`GET ${artifactUrl} → ${response.status}, expected 302`)
  if (!response.headers.get('location')) throw new Error('302 response has no Location header')

  console.log(`\nContract tests passed: ${options.langs.join(', ')}`)
} catch (error) {
  if (options.docker && running) {
    const logs = spawnSync('docker', ['compose', '-f', composeFile, 'logs', '--no-color', '--tail', '80'], {
      cwd: root,
      encoding: 'utf8',
    })
    if (logs.stdout) console.error(logs.stdout)
  }
  throw error
} finally {
  if (options.docker && running && !options.keep) {
    console.log('\nRemoving the stack')
    spawnSync('docker', ['compose', '-f', composeFile, 'down', '-v', '--remove-orphans'], { cwd: root, stdio: 'inherit' })
  }
  if (options.keep) console.log(`\nStack left running at ${url}`)
}
