#!/usr/bin/env node
/**
 * Bootstraps a fresh Shukka instance for the contract tests: admin password,
 * a Tauri app pointing at MinIO, and an app-scoped API key.
 *
 * Runs inside the compose network (`publisher` service), so the S3 endpoint it
 * registers is `http://minio:9000`, which is also the host presigned URLs are
 * signed for.
 */
import { baseUrl, cookieJar, emit, fixture, log, request } from './lib.mjs'

const jar = cookieJar()

async function admin(path, method, json) {
  const { response, payload } = await request(path, { method, json, cookie: jar.header })
  jar.absorb(response)
  if (!response.ok) {
    throw new Error(`${method} ${path} → ${response.status}: ${payload?.message ?? JSON.stringify(payload)}`)
  }
  return payload
}

const state = await admin('/api/admin/session', 'GET')
if (state?.initialized) {
  log('Admin already initialized; logging in')
  await admin('/api/admin/login', 'POST', { password: fixture.password })
} else {
  log('Initializing admin')
  await admin('/api/admin/setup', 'POST', { password: fixture.password })
}

const { apps } = await admin('/api/admin/apps', 'GET')
let app = apps?.find((entry) => entry.slug === fixture.app)
if (app) {
  log(`Reusing app ${fixture.app}`)
} else {
  log(`Creating app ${fixture.app}`)
  const created = await admin('/api/admin/apps', 'POST', {
    name: 'Shukka Contract CI',
    slug: fixture.app,
    updaterKind: 'tauri',
    s3Endpoint: process.env.S3_URL ?? 'http://minio:9000',
    s3Region: 'us-east-1',
    s3Bucket: process.env.S3_BUCKET ?? 'releases',
    s3Prefix: 'contract',
    s3AccessKeyId: process.env.S3_ACCESS_KEY ?? 'shukka',
    s3SecretAccessKey: process.env.S3_SECRET_KEY ?? 'shukkasecret',
    s3ForcePathStyle: true,
  })
  app = created.app
}

const { plaintext } = await admin(`/api/v1/apps/${fixture.app}/keys`, 'POST', {
  name: `contract-${Date.now()}`,
})

log(`Provisioned ${baseUrl} app=${fixture.app}`)
emit({ app: fixture.app, apiKey: plaintext })
