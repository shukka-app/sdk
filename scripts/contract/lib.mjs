#!/usr/bin/env node
/**
 * Shared HTTP helpers for the contract fixtures. Runs on Node 24 with no
 * dependencies, both on the host and inside the `publisher` compose service.
 */

export const baseUrl = (process.env.SHUKKA_URL ?? process.env.SHUKKA_CONTRACT_URL ?? 'http://localhost:3000').replace(
  /\/+$/,
  '',
)

export const fixture = {
  app: process.env.SHUKKA_APP ?? process.env.SHUKKA_CONTRACT_APP ?? 'shukka-contract-ci',
  channel: process.env.SHUKKA_CONTRACT_CHANNEL ?? 'stable',
  version: process.env.SHUKKA_CONTRACT_VERSION ?? '1.2.3',
  password: process.env.SHUKKA_PASSWORD ?? 'shukka-contract-password',
}

/** Progress goes to stderr so stdout stays parseable as JSON. */
export function log(...args) {
  console.error(...args)
}

export function cookieJar() {
  let cookie = ''
  return {
    get header() {
      return cookie
    },
    absorb(response) {
      const setCookie = response.headers.get('set-cookie')
      if (setCookie) cookie = setCookie.split(';')[0]
    },
  }
}

export async function request(path, { method = 'GET', json, token, cookie } = {}) {
  const headers = { accept: 'application/json' }
  if (json !== undefined) headers['content-type'] = 'application/json'
  if (token) headers.authorization = `Bearer ${token}`
  if (cookie) headers.cookie = cookie

  const response = await fetch(`${baseUrl}${path}`, {
    method,
    headers,
    body: json === undefined ? undefined : JSON.stringify(json),
  })
  const text = await response.text()
  let payload = null
  try {
    payload = text ? JSON.parse(text) : null
  } catch {
    payload = text
  }
  return { response, payload }
}

export async function call(path, options) {
  const { response, payload } = await request(path, options)
  if (!response.ok) {
    const detail = payload?.message ?? (typeof payload === 'string' ? payload : JSON.stringify(payload))
    throw new Error(`${options?.method ?? 'GET'} ${path} → ${response.status}: ${detail}`)
  }
  return payload
}

/** Prints the single JSON line the orchestrator parses out of `docker compose run`. */
export function emit(result) {
  process.stdout.write(`${JSON.stringify(result)}\n`)
}
