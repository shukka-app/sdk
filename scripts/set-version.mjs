#!/usr/bin/env node
/**
 * Writes one version into all three published packages, so a release tag
 * publishes a consistent set. The Swift package has no version field — its
 * tag is the version.
 *
 *   node scripts/set-version.mjs 1.4.0
 */
import { readFileSync, writeFileSync } from 'node:fs'
import { dirname, join, resolve } from 'node:path'
import { fileURLToPath } from 'node:url'

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..')
const version = process.argv[2]

if (!version || !/^\d+\.\d+\.\d+(?:-[0-9A-Za-z.-]+)?$/.test(version)) {
  console.error('Usage: node scripts/set-version.mjs <major.minor.patch[-prerelease]>')
  process.exit(1)
}

const targets = [
  { file: 'packages/typescript/package.json', pattern: /"version": "[^"]+"/, replacement: `"version": "${version}"` },
  { file: 'packages/dart/pubspec.yaml', pattern: /^version: .*$/m, replacement: `version: ${version}` },
  { file: 'packages/rust/Cargo.toml', pattern: /^version = "[^"]+"/m, replacement: `version = "${version}"` },
]

for (const target of targets) {
  const path = join(root, target.file)
  const source = readFileSync(path, 'utf8')
  const updated = source.replace(target.pattern, target.replacement)
  if (updated === source) throw new Error(`${target.file}: version line did not match; update set-version.mjs`)
  writeFileSync(path, updated)
  console.log(`${target.file} → ${version}`)
}
