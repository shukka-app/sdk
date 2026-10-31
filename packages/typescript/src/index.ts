/**
 * Thin hand-written layer over the generated client.
 *
 * `src/client` is regenerated from the OpenAPI contract — never edit it. This
 * file binds one configured `Client` into the generated operations so callers
 * write `shukka.getApp({ path: { appSlug } })` instead of passing `client` on
 * every call. Adding an operation means adding one line here.
 */
import { createClient, createConfig } from './client/client'
import type { Client, TDataShape } from './client/client'
import {
  createChannel,
  deleteChannel,
  deleteNote,
  deleteVersion,
  finalizeUpload,
  getApp,
  getArtifact,
  getChannelFeed,
  getChannelTrend,
  getEditorNotes,
  getFeedFile,
  getReleaseMetadata,
  getVersionTrend,
  initUpload,
  listChannels,
  listPublicNotes,
  replaceReleaseMetadata,
  saveNotesConfig,
  setCurrentVersion,
  updateApp,
  upsertNote,
} from './client'
import type {
  CreateChannelData,
  DeleteChannelData,
  DeleteNoteData,
  DeleteVersionData,
  FinalizeUploadData,
  GetAppData,
  GetArtifactData,
  GetChannelFeedData,
  GetChannelTrendData,
  GetEditorNotesData,
  GetFeedFileData,
  GetReleaseMetadataData,
  GetVersionTrendData,
  InitUploadData,
  ListChannelsData,
  ListPublicNotesData,
  Options,
  ReplaceReleaseMetadataData,
  SaveNotesConfigData,
  SetCurrentVersionData,
  UpdateAppData,
  UpsertNoteData,
} from './client'

export * from './client'

export interface ShukkaClientOptions {
  /** Instance origin, for example `https://updates.example.com`. */
  baseUrl: string
  /** App-scoped API key (`shk_…`). Omit for the public feed and notes operations. */
  apiKey?: string
  /** Custom fetch implementation (tests, proxies, non-standard runtimes). */
  fetch?: typeof globalThis.fetch
}

/** The generated operations take `{ ...input, client }`; callers only pass the input. */
type Bound<Data extends TDataShape> = <ThrowOnError extends boolean = false>(
  options: Omit<Options<Data, ThrowOnError>, 'client'>,
) => unknown

export function createShukkaClient(options: ShukkaClientOptions) {
  const client: Client = createClient(
    createConfig({
      baseUrl: options.baseUrl.replace(/\/+$/, ''),
      headers: options.apiKey ? { Authorization: `Bearer ${options.apiKey}` } : undefined,
      fetch: options.fetch,
    }),
  )

  return {
    client,
    getApp: (<T extends boolean = false>(input: Omit<Options<GetAppData, T>, 'client'>) =>
      getApp({ ...input, client })) satisfies Bound<GetAppData>,
    updateApp: (<T extends boolean = false>(input: Omit<Options<UpdateAppData, T>, 'client'>) =>
      updateApp({ ...input, client })) satisfies Bound<UpdateAppData>,
    listChannels: (<T extends boolean = false>(input: Omit<Options<ListChannelsData, T>, 'client'>) =>
      listChannels({ ...input, client })) satisfies Bound<ListChannelsData>,
    createChannel: (<T extends boolean = false>(input: Omit<Options<CreateChannelData, T>, 'client'>) =>
      createChannel({ ...input, client })) satisfies Bound<CreateChannelData>,
    setCurrentVersion: (<T extends boolean = false>(input: Omit<Options<SetCurrentVersionData, T>, 'client'>) =>
      setCurrentVersion({ ...input, client })) satisfies Bound<SetCurrentVersionData>,
    deleteChannel: (<T extends boolean = false>(input: Omit<Options<DeleteChannelData, T>, 'client'>) =>
      deleteChannel({ ...input, client })) satisfies Bound<DeleteChannelData>,
    getChannelTrend: (<T extends boolean = false>(input: Omit<Options<GetChannelTrendData, T>, 'client'>) =>
      getChannelTrend({ ...input, client })) satisfies Bound<GetChannelTrendData>,
    deleteVersion: (<T extends boolean = false>(input: Omit<Options<DeleteVersionData, T>, 'client'>) =>
      deleteVersion({ ...input, client })) satisfies Bound<DeleteVersionData>,
    getArtifact: (<T extends boolean = false>(input: Omit<Options<GetArtifactData, T>, 'client'>) =>
      getArtifact({ ...input, client })) satisfies Bound<GetArtifactData>,
    getReleaseMetadata: (<T extends boolean = false>(input: Omit<Options<GetReleaseMetadataData, T>, 'client'>) =>
      getReleaseMetadata({ ...input, client })) satisfies Bound<GetReleaseMetadataData>,
    replaceReleaseMetadata: (<T extends boolean = false>(
      input: Omit<Options<ReplaceReleaseMetadataData, T>, 'client'>,
    ) => replaceReleaseMetadata({ ...input, client })) satisfies Bound<ReplaceReleaseMetadataData>,
    getVersionTrend: (<T extends boolean = false>(input: Omit<Options<GetVersionTrendData, T>, 'client'>) =>
      getVersionTrend({ ...input, client })) satisfies Bound<GetVersionTrendData>,
    getEditorNotes: (<T extends boolean = false>(input: Omit<Options<GetEditorNotesData, T>, 'client'>) =>
      getEditorNotes({ ...input, client })) satisfies Bound<GetEditorNotesData>,
    upsertNote: (<T extends boolean = false>(input: Omit<Options<UpsertNoteData, T>, 'client'>) =>
      upsertNote({ ...input, client })) satisfies Bound<UpsertNoteData>,
    deleteNote: (<T extends boolean = false>(input: Omit<Options<DeleteNoteData, T>, 'client'>) =>
      deleteNote({ ...input, client })) satisfies Bound<DeleteNoteData>,
    listPublicNotes: (<T extends boolean = false>(input: Omit<Options<ListPublicNotesData, T>, 'client'>) =>
      listPublicNotes({ ...input, client })) satisfies Bound<ListPublicNotesData>,
    saveNotesConfig: (<T extends boolean = false>(input: Omit<Options<SaveNotesConfigData, T>, 'client'>) =>
      saveNotesConfig({ ...input, client })) satisfies Bound<SaveNotesConfigData>,
    initUpload: (<T extends boolean = false>(input: Omit<Options<InitUploadData, T>, 'client'>) =>
      initUpload({ ...input, client })) satisfies Bound<InitUploadData>,
    finalizeUpload: (<T extends boolean = false>(input: Omit<Options<FinalizeUploadData, T>, 'client'>) =>
      finalizeUpload({ ...input, client })) satisfies Bound<FinalizeUploadData>,
    getChannelFeed: (<T extends boolean = false>(input: Omit<Options<GetChannelFeedData, T>, 'client'>) =>
      getChannelFeed({ ...input, client })) satisfies Bound<GetChannelFeedData>,
    getFeedFile: (<T extends boolean = false>(input: Omit<Options<GetFeedFileData, T>, 'client'>) =>
      getFeedFile({ ...input, client })) satisfies Bound<GetFeedFileData>,
  }
}

export type ShukkaClient = ReturnType<typeof createShukkaClient>
