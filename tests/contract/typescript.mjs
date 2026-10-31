#!/usr/bin/env node
/**
 * TypeScript SDK contract test. Driven by scripts/test-contract.mjs.
 *
 * Imports the bundled `dist/` output, because that is what npm ships.
 */
import { createShukkaClient } from '../../packages/typescript/dist/index.js'

const {
  SHUKKA_CONTRACT_URL: baseUrl,
  SHUKKA_CONTRACT_APP: appSlug,
  SHUKKA_CONTRACT_CHANNEL: channel,
  SHUKKA_CONTRACT_VERSION: version,
  SHUKKA_CONTRACT_KEY: apiKey,
  SHUKKA_CONTRACT_NOTE: note,
} = process.env
for (const [name, value] of Object.entries({
  SHUKKA_CONTRACT_URL: baseUrl,
  SHUKKA_CONTRACT_APP: appSlug,
  SHUKKA_CONTRACT_CHANNEL: channel,
  SHUKKA_CONTRACT_VERSION: version,
  SHUKKA_CONTRACT_KEY: apiKey,
  SHUKKA_CONTRACT_NOTE: note,
})) {
  if (!value) throw new Error(`${name} is required`)
}

function expect(condition, message) {
  if (!condition) throw new Error(message)
}

const shukka = createShukkaClient({ baseUrl, apiKey })

const appResult = await shukka.getApp({ path: { appSlug } })
expect(!appResult.error, `getApp failed: ${JSON.stringify(appResult.error)}`)
const detail = appResult.data
expect(detail.app.slug === appSlug, `getApp returned slug ${detail.app.slug}`)
expect(detail.app.updaterKind === 'tauri', `updaterKind is ${detail.app.updaterKind}`)
expect(Object.hasOwn(detail.app, 's3Endpoint'), 's3Endpoint (nullable) is missing from the response')
expect(!('keys' in detail) || detail.keys.length === 0, 'keys leaked into an API-key response')
console.log(`typescript getApp ok: ${detail.app.slug} (${detail.app.updaterKind})`)

const channelsResult = await shukka.listChannels({ path: { appSlug } })
expect(!channelsResult.error, `listChannels failed: ${JSON.stringify(channelsResult.error)}`)
const stable = channelsResult.data.channels.find((entry) => entry.name === channel)
expect(stable, `listChannels has no "${channel}" channel`)
expect(stable.currentVersionId != null, `channel "${channel}" has no current version`)
console.log(`typescript listChannels ok: ${channelsResult.data.channels.map((entry) => entry.name).join(', ')}`)

const notesResult = await shukka.listPublicNotes({ path: { appSlug, channel } })
expect(!notesResult.error, `listPublicNotes failed: ${JSON.stringify(notesResult.error)}`)
const publicNote = notesResult.data.notes.find((entry) => entry.version === version)
expect(publicNote, `listPublicNotes has no note for ${version}`)
expect(publicNote.markdown.includes(note), 'public note markdown does not match the fixture')
expect(publicNote.locale === 'en', `public note locale is ${publicNote.locale}`)
console.log(`typescript listPublicNotes ok: ${publicNote.version} (${publicNote.locale})`)

const feedResult = await shukka.getChannelFeed({ path: { appSlug, channel } })
expect(!feedResult.error, `getChannelFeed failed: ${JSON.stringify(feedResult.error)}`)
expect(feedResult.data.version === version, `feed serves ${feedResult.data.version}, expected ${version}`)
expect(Object.keys(feedResult.data.platforms).length > 0, 'feed has no platforms')
console.log(`typescript getChannelFeed ok: ${feedResult.data.version}`)

const fileResult = await shukka.getFeedFile({ path: { appSlug, channel, filename: 'latest.json' } })
expect(!fileResult.error, `getFeedFile failed: ${JSON.stringify(fileResult.error)}`)
expect(fileResult.data.version === version, `latest.json serves ${fileResult.data.version}`)
console.log(`typescript getFeedFile ok: latest.json`)
