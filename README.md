# shukka-sdk

Client SDKs for the [Shukka](https://github.com/shukka-app/shukka) release API, generated from
one OpenAPI contract.

| Package | Language | Generator | Publishes to |
|---|---|---|---|
| `packages/typescript` | TypeScript / JavaScript | [`@hey-api/openapi-ts`](https://heyapi.dev) | npm `@shukka/sdk` |
| `packages/dart` | Dart | [openapi-generator](https://openapi-generator.tech) `dart-dio` | pub.dev `shukka_sdk` |
| `packages/rust` | Rust | [progenitor](https://github.com/oxidecomputer/progenitor) | crates.io `shukka` |
| `packages/swift` | Swift | [swift-openapi-generator](https://github.com/apple/swift-openapi-generator) | Swift Package Manager |

Nothing here is hand-written except the thin facades
(`packages/typescript/src/index.ts`, `packages/rust/src/lib.rs`,
`packages/swift/Sources/ShukkaSDK/ShukkaSDK.swift`) and this repository's scripts.

## The contract

`spec/` holds two snapshots of the same document:

| File | Version | Consumed by |
|---|---|---|
| `openapi.json` | OpenAPI 3.1.0 | TypeScript |
| `openapi-3.0.json` | OpenAPI 3.0.3 | Dart, Rust, Swift |

3.0.3 is not a legacy leftover — it is what the generators actually need:

- **Dart / Rust**: openapi-generator's 3.1 support is beta (its validator rejected
  `propertyNames` with a hard error), and progenitor rejects anything that is not `3.0.x`.
- **Swift**: the generator accepts 3.1, but silently drops `type: "null"` branches, which
  turns every nullable field into a missing one. Fed the 3.0.3 snapshot, the same fields
  come out as `String?` / `Int?`.

Both files are produced by shukka itself (`apps/shukka/src/server/openapi.ts` and
`openapi-30.ts`), so the downgrade lives next to the schema builder that creates it.

Every operation has a stable `operationId`, and the generators name their methods from it:
`getApp`, `setCurrentVersion`, `listPublicNotes`, `getFeedFile`. **Renaming one is a breaking
change for every language.**

## Regenerating

```bash
pnpm install
SHUKKA_SPEC_DIR=../shukka/apps/docs/public node scripts/fetch-spec.mjs   # or omit to pull from the docs site
node scripts/generate.mjs              # all four
node scripts/generate.mjs dart swift   # just these
```

Toolchains: Node 20+, Java 17+ (openapi-generator), Dart 3.8+, Rust 1.80+, Swift 6.0+.

`fetch-spec.mjs` refuses to continue if the snapshots are not the expected OpenAPI version or
if any operation is missing an `operationId`, and writes `spec/openapi.lock.json` with the
sha256 of what was pulled.

`generate.mjs` pins the generators, so the same spec always produces the same code:

- openapi-generator `7.26.0` — pinned in `openapitools.json`;
- `@hey-api/openapi-ts` — pinned in this package's devDependencies;
- progenitor and swift-openapi-generator — pinned in `Cargo.toml` / `Package.swift`.

Generated code is committed. A diff after regeneration is the signal that the contract moved.

## Release flow (planned)

1. shukka tags a release and publishes `openapi.json` + `openapi.v3.0.json` as release assets.
2. `repository_dispatch` lands here; `fetch-spec.mjs` pulls from the release assets (immutable per tag).
3. `generate.mjs` runs; no diff means nothing to ship.
4. A PR with the regenerated diff goes to review; merging tags `vX.Y.Z`.
5. Publish jobs fan out: npm, pub.dev, crates.io, and the Swift tag itself.

The SDK version tracks the shukka release it was generated from. Breaking contract changes
(renamed `operationId`, removed fields) bump the SDK major.

## Known gaps

- **Nested models are still inline.** Top-level bodies are named components
  (`AppDetail`, `ChannelList`, `UploadInitRequest`, …), but nested objects are not:
  Dart still generates `AppDetailChannelsInner`. Naming the nested shapes upstream
  would finish the job.
- **Upload is not wrapped.** `initUpload → presigned PUT → finalizeUpload` needs a hand-written
  helper per language (streaming body, content-length, retries). Deprioritized on purpose.
- **No contract tests yet.** Every SDK compiles, but nothing proves a generated client can
  talk to a real shukka. [`TODO.md`](TODO.md) has the plan, along with publishing and npm
  trusted publishing.
- **Swift pins swift-collections `< 1.7.0`** in `Package.swift`: 1.7.x does not compile with
  the Swift 6.4 toolchain (Xcode 27). Remove the pin once upstream fixes it.
