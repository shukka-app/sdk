#!/usr/bin/env node
/**
 * Publishes one Tauri release through the upload protocol and seeds public
 * release notes, so every read surface has something to return.
 *
 * Runs inside the compose network: presigned PUTs are signed for `s3`.
 */
import { createHash, randomBytes } from 'node:crypto'
import { call, emit, fixture, log } from './lib.mjs'

const apiKey = process.env.SHUKKA_CONTRACT_KEY
if (!apiKey) throw new Error('SHUKKA_CONTRACT_KEY is required (provision.mjs prints it)')

const artifact = `ShukkaContract_${fixture.version}_x64.app.tar.gz`
const signatureFile = `${artifact}.sig`
const artifactBytes = randomBytes(64 * 1024)
const signatureBytes = Buffer.from(`contract-signature-${createHash('sha256').update(artifactBytes).digest('base64')}`)
const contents = new Map([
  [artifact, artifactBytes],
  [signatureFile, signatureBytes],
])

const authorized = (path, method, json) => call(path, { method, json, token: apiKey })

log(`Starting upload of ${fixture.version} on ${fixture.channel}`)
const upload = await authorized('/api/v1/upload/init', 'POST', {
  app: fixture.app,
  channel: fixture.channel,
  version: fixture.version,
  createChannel: true,
  files: [...contents].map(([filename, bytes]) => ({ filename, size: bytes.length })),
})

for (const file of upload.files) {
  const body = contents.get(file.filename)
  if (!body) throw new Error(`Server asked for unexpected file ${file.filename}`)
  const response = await fetch(file.uploadUrl, { method: 'PUT', body })
  if (!response.ok) throw new Error(`PUT ${file.filename} → ${response.status}`)
  log(`Uploaded ${file.filename} (${body.length} bytes)`)
}

const finalized = await authorized('/api/v1/upload/finalize', 'POST', {
  app: fixture.app,
  uploadId: upload.uploadId,
  release: true,
})
log(`Finalized ${finalized.channel}@${finalized.version}`)

await authorized(`/api/v1/apps/${fixture.app}/notes-config`, 'PUT', {
  enabled: true,
  locales: ['en'],
  fallbackLocale: 'en',
})

const markdown = `## What's new\n\nContract fixture release ${fixture.version}.`
await authorized(
  `/api/v1/apps/${fixture.app}/channels/${fixture.channel}/versions/${fixture.version}/notes/en`,
  'PUT',
  { markdown },
)

emit({
  app: fixture.app,
  channel: fixture.channel,
  version: fixture.version,
  artifact,
  markdown,
  artifacts: finalized.artifacts,
})
