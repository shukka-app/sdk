#!/usr/bin/env node
/**
 * Regenerates every language from the contract in spec/.
 *
 *   node scripts/generate.mjs             # all four
 *   node scripts/generate.mjs typescript dart
 *
 * Generators are pinned so the same spec produces the same code:
 *   TypeScript — @hey-api/openapi-ts (package.json)
 *   Dart       — openapi-generator-cli 7.26.0 (openapitools.json)
 *   Rust       — progenitor (Cargo.toml), runs in build.rs
 *   Swift      — swift-openapi-generator (Package.swift), runs as an SPM plugin
 */
import { execFileSync } from 'node:child_process'
import { copyFileSync, readFileSync, rmSync, writeFileSync } from 'node:fs'
import { dirname, join, resolve } from 'node:path'
import { fileURLToPath } from 'node:url'

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..')
const bin = join(root, 'node_modules', '.bin')
const spec31 = join(root, 'spec', 'openapi.json')
const spec30 = join(root, 'spec', 'openapi-3.0.json')

function run(command, args, cwd = root) {
  execFileSync(command, args, { cwd, stdio: 'inherit' })
}

/**
 * openapi-generator writes `sdk: '>=3.5.0 <4.0.0'`, but json_serializable emits
 * null-aware elements (`?value`), which needs Dart 3.8+. Patch the floor and
 * fail loudly if the template changed shape.
 */
function patchDartPubspec() {
  const path = join(root, 'packages', 'dart', 'pubspec.yaml')
  const source = readFileSync(path, 'utf8')
  const patched = source.replace(/sdk: '>=3\.\d+\.\d+ <4\.0\.0'/, "sdk: '>=3.8.0 <4.0.0'")
  if (patched === source) {
    throw new Error('pubspec.yaml SDK constraint did not match `sdk: \'>=3.x <4.0.0\'` — update patchDartPubspec()')
  }
  writeFileSync(path, patched)
}

/**
 * pub.dev wants a LICENSE and a CHANGELOG next to the pubspec, and the Dart
 * package is rewritten from scratch on every run, so both are recreated here.
 */
function writeDartPublishingFiles() {
  const pkg = join(root, 'packages', 'dart')
  const { version } = /version:\s*(?<version>[^\s]+)/.exec(readFileSync(join(pkg, 'pubspec.yaml'), 'utf8')).groups
  copyFileSync(join(root, 'LICENSE'), join(pkg, 'LICENSE'))
  writeFileSync(
    join(pkg, 'CHANGELOG.md'),
    `## ${version}\n\nGenerated from the Shukka OpenAPI contract (${new Date().toISOString().slice(0, 10)}).\n`,
  )
}

const generators = {
  typescript() {
    run(join(bin, 'openapi-ts'), ['-f', 'openapi-ts.config.ts'], join(root, 'packages', 'typescript'))
  },

  dart() {
    // openapi-generator never deletes output it wrote on a previous run, so a
    // renamed schema would leave its old model behind. `packages/dart` is fully
    // generated — if a hand-written layer is ever added, stop wiping the whole
    // directory and clean only lib/doc/test.
    rmSync(join(root, 'packages', 'dart'), { recursive: true, force: true })

    // 3.0.3: openapi-generator's 3.1 support is beta, and its validator rejects
    // keywords it does not model (it failed on `propertyNames`).
    run(join(bin, 'openapi-generator-cli'), [
      'generate',
      '-g', 'dart-dio',
      '-i', spec30,
      '-o', join(root, 'packages', 'dart'),
      '-c', join(root, 'scripts', 'generator', 'dart.yaml'),
    ])
    patchDartPubspec()
    writeDartPublishingFiles()
    const pkg = join(root, 'packages', 'dart')
    run('dart', ['pub', 'get'], pkg)
    run('dart', ['run', 'build_runner', 'build', '--delete-conflicting-outputs'], pkg)
    // openapi-generator imports `error.dart` in operations that declare a 404
    // body but never reference the type. Pub.dev rejects a package whose
    // analyzer output is not empty, so drop exactly those imports.
    run('dart', ['fix', '--apply', '--code=unused_import'], pkg)
  },

  rust() {
    // The crate carries its own copy of the contract so the published tarball
    // is self-contained; build.rs runs against it.
    copyFileSync(spec30, join(root, 'packages', 'rust', 'openapi.json'))
    run('cargo', ['build'], join(root, 'packages', 'rust'))
  },

  swift() {
    // The SPM plugin only reads a document inside the target directory.
    copyFileSync(spec30, join(root, 'packages', 'swift', 'Sources', 'ShukkaSDK', 'openapi.json'))
    run('swift', ['build'], join(root, 'packages', 'swift'))
  },
}

const requested = process.argv.slice(2).filter((arg) => !arg.startsWith('-'))
const selected = requested.length > 0 ? requested : Object.keys(generators)

for (const name of selected) {
  const generate = generators[name]
  if (!generate) {
    console.error(`Unknown generator "${name}". Known: ${Object.keys(generators).join(', ')}`)
    process.exit(1)
  }
  console.log(`\n▶ ${name}`)
  generate()
}

console.log(`\nDone: ${selected.join(', ')}`)
