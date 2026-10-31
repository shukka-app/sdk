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
SHUKKA_SPEC_DIR=../shukka/apps/docs/public node scripts/fetch-spec.mjs   # or omit to pull from shukka main
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

## Contract tests

```bash
node scripts/test-contract.mjs                  # all four languages
node scripts/test-contract.mjs typescript dart  # just these
node scripts/test-contract.mjs --keep           # leave the stack running
```

The orchestrator starts `ghcr.io/shukka-app/shukka` plus an S3-compatible store
(`andrewgaul/s3proxy`, which validates SigV4) with `docker-compose.contract.yml`,
creates an app and an API key, publishes one Tauri release through the upload protocol, then
runs one runner per language against the live instance:

| Language | Runner |
|---|---|
| TypeScript | `tests/contract/typescript.mjs` (imports the built `dist/`) |
| Dart | `tests/contract/dart/bin/contract.dart` |
| Rust | `packages/rust/tests/contract.rs` (`cargo test --test contract`) |
| Swift | `packages/swift/Tests/ShukkaSDKContractTests` (`swift test`) |

Each runner reads `getApp` → `listChannels` → `listPublicNotes` → `getChannelFeed` →
`getFeedFile`; the orchestrator separately asserts that an artifact request 302s instead
of inlining the body. The Rust client is the strictest (`deny_unknown_fields`), so it
catches responses that drift from the documented schema.

The runtime image defaults to `:latest`. Pin `SHUKKA_IMAGE` to the image built from the
release the contract came from; `--no-docker` reuses an instance at
`SHUKKA_CONTRACT_URL`.

## Publishing

`node scripts/test-publish.mjs` is a credential-free dry run: it inspects the npm
tarball, runs `dart pub publish --dry-run`, `cargo publish --dry-run`, and
`swift package describe`.

On a `vX.Y.Z` tag, `.github/workflows/publish.yml` publishes all three packages through
trusted publishing — GitHub OIDC with no tokens in secrets: `@shukka/sdk` to npm,
`shukka_sdk` to pub.dev, `shukka` to crates.io. Each registry accepts a trusted publisher
only after the package's first, hand-published version.

## Release flow

1. shukka publishes a GitHub release. Regeneration is manual: dispatch `generate.yml`
   with `spec_base_url` pinned to that tag's `apps/docs/public` snapshots
   (`https://raw.githubusercontent.com/shukka-app/shukka/vX.Y.Z/apps/docs/public`), so the
   SDK is generated from the release the tag names, not from a moving `main`.
   Automatic `repository_dispatch` is deliberately not wired (it would need a cross-repo
   token); see TODO.md.
2. `fetch-spec.mjs` pulls both snapshots from `spec_base_url`.
3. `generate.yml` runs `generate.mjs`; no diff means the release did not change the contract.
4. On drift, `generate.yml` opens a pull request with the regenerated code. Review
   `spec/openapi.lock.json` first, then the generated packages; merging tags `vX.Y.Z`.
5. `publish.yml` publishes every package from that tag — npm, pub.dev and crates.io, all
   through OIDC — and npm attaches a provenance attestation.

The SDK version tracks the shukka release it was generated from. Breaking contract changes
(renamed `operationId`, removed fields) bump the SDK major.

## Known gaps

- **Nested models are still inline.** Top-level bodies are named components
  (`AppDetail`, `ChannelList`, `UploadInitRequest`, …), but nested objects are not:
  Dart still generates `AppDetailChannelsInner`. Naming the nested shapes upstream
  would finish the job.
- **Upload is not wrapped.** `initUpload → presigned PUT → finalizeUpload` needs a hand-written
  helper per language (streaming body, content-length, retries). Deprioritized on purpose.
- **Swift pins swift-collections `< 1.7.0`** in `Package.swift`: 1.7.x does not compile with
  the Swift 6.4 toolchain (Xcode 27). Remove the pin once upstream fixes it.
