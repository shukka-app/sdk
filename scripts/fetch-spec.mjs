#!/usr/bin/env node
/**
 * Pulls the Shukka OpenAPI snapshots into spec/ and records what was pulled.
 *
 *   node scripts/fetch-spec.mjs
 *   SHUKKA_SPEC_URL=https://updates.example.com node scripts/fetch-spec.mjs
 *   SHUKKA_SPEC_DIR=../shukka/apps/docs/public node scripts/fetch-spec.mjs
 *
 * The default source is the public docs site, which publishes a build of
 * shukka's own spec builder. In CI this will instead read the release asset
 * (`openapi.json` + `openapi.v3.0.json`), which is immutable per tag.
 *
 * spec/openapi.json     — OpenAPI 3.1.0 (en), what @hey-api and Swift consume
 * spec/openapi-3.0.json — OpenAPI 3.0.3 (en), what openapi-generator and
 *                         progenitor consume
 */
import { createHash } from 'node:crypto'
import { readFile, writeFile } from 'node:fs/promises'
import { dirname, join, resolve } from 'node:path'
import { fileURLToPath } from 'node:url'

const root = resolve(dirname(fileURLToPath(import.meta.url)), '..')
const specDir = join(root, 'spec')

const baseUrl = (process.env.SHUKKA_SPEC_URL ?? 'https://shukka.akr.moe').replace(/\/+$/, '')
const localDir = process.env.SHUKKA_SPEC_DIR

const snapshots = [
  { file: 'openapi.json', remote: 'openapi.json', version: '3.1.0' },
  { file: 'openapi-3.0.json', remote: 'openapi.v3.0.json', version: '3.0.3' },
]

async function readSource({ remote }) {
  if (localDir) {
    return readFile(resolve(localDir, remote), 'utf8')
  }
  const res = await fetch(`${baseUrl}/${remote}`)
  if (!res.ok) throw new Error(`${baseUrl}/${remote} → HTTP ${res.status}`)
  return res.text()
}

const HTTP_METHODS = ['get', 'post', 'put', 'patch', 'delete', 'head', 'options', 'trace']

function operationsOf(pathItem) {
  return Object.entries(pathItem)
    .filter(([method]) => HTTP_METHODS.includes(method))
    .map(([, operation]) => operation)
}

const lock = { source: localDir ? `dir:${resolve(localDir)}` : `url:${baseUrl}`, fetchedAt: new Date().toISOString(), files: {} }

for (const snapshot of snapshots) {
  const text = await readSource(snapshot)
  const spec = JSON.parse(text)

  if (spec.openapi !== snapshot.version) {
    throw new Error(`${snapshot.remote}: expected OpenAPI ${snapshot.version}, got ${spec.openapi}`)
  }

  const operations = Object.values(spec.paths).flatMap(operationsOf)
  const missingId = operations.filter((operation) => !operation.operationId)
  if (missingId.length > 0) {
    throw new Error(`${snapshot.remote}: ${missingId.length} operation(s) have no operationId`)
  }

  await writeFile(join(specDir, snapshot.file), `${JSON.stringify(spec, null, 2)}\n`)

  lock.files[snapshot.file] = {
    openapi: spec.openapi,
    sha256: createHash('sha256').update(text).digest('hex'),
    operations: operations.length,
  }

  console.log(`${snapshot.file}: OpenAPI ${spec.openapi}, ${operations.length} operations`)
}

await writeFile(join(specDir, 'openapi.lock.json'), `${JSON.stringify(lock, null, 2)}\n`)
console.log(`Wrote spec/openapi.lock.json (source: ${lock.source})`)
