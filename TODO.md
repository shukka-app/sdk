# TODO

## 1. Contract tests in CI — done

`scripts/test-contract.mjs` + `docker-compose.contract.yml` + `.github/workflows/contract.yml`.
Each language reads `getApp → listChannels → listPublicNotes → getChannelFeed → getFeedFile`
against a live Shukka, and the orchestrator asserts an artifact request 302s instead of
inlining the body. The Rust runner is the strict one: its deserializer denies unknown
fields, so a response that drifts from the schema fails instead of being ignored.
The stack uses s3proxy rather than MinIO: MinIO's published images are no longer pullable
anonymously, and s3proxy still rejects unsigned requests. `contract.yml` is green on `main`.

Remaining:

- [ ] Add upload coverage (`initUpload → PUT → finalizeUpload`) once each SDK has a helper.
- [ ] Pin `SHUKKA_IMAGE` in `contract.yml` to a release that matches the published spec,
      instead of `:latest`.

## 2. Publishing config (dry run) — done

`scripts/test-publish.mjs` runs on every PR and in the `publish` workflow's `verify` job:

- npm — `npm pack --dry-run` asserts the tarball is `dist/` + README/LICENSE/package.json only;
  `pnpm publish --dry-run` then checks the publish path.
- pub.dev — `dart pub publish --dry-run`. `generate.mjs` writes `LICENSE` and `CHANGELOG.md`
  into the generated package and runs `dart fix --apply --code=unused_import`, because
  pub.dev rejects packages whose analyzer output is not empty.
- crates.io — `cargo publish --dry-run`. The crate now carries its own `openapi.json`
  next to `Cargo.toml`, because publishing only includes files inside the crate directory.
- Swift — `swift package describe`.

- [x] Confirm the `shukka` crate name is free on crates.io — 404 on 2026-10-31.
- [x] Re-check `@shukka/sdk` and `shukka_sdk` immediately before the first publish
      (both 404 on 2026-10-31).

## 3. npm trusted publishing — done

Verified on 2026-10-31: `0.1.0` was the one-off hand publish, and `0.1.1` was published by
`publish.yml` through OIDC with no token. The registry serves two attestations for it
(`npm publish` + SLSA provenance), and `latest` points at `0.1.1`.

- [x] `@shukka` scope exists and the account can write to it.
- [x] First publish `0.1.0` with a token.
- [x] `npm trust github @shukka/sdk --repo shukka-app/sdk --file publish.yml --allow-publish`.
- [x] Dispatch `publish.yml` with `dry_run: false, version: 0.1.1`; provenance is attached.

## 4. pub.dev and crates.io — bootstrap pending

Both registries now support OIDC, and both follow the npm shape: one hand publish, then
register this repository and `publish.yml`. Until then, `publish.yml` only dry-runs them.

pub.dev:

- [ ] `dart pub login`, then `dart pub publish` from `packages/dart` (first version, 0.1.0).
- [ ] Admin → Automated publishing: repository `shukka-app/sdk`, tag pattern `v{{version}}`,
      workflow `publish.yml`.
- [ ] Add a `pubdev` job that sets the version from the tag and runs
      `dart pub publish --force` (the OIDC token is minted by `setup-dart`).

crates.io:

- [ ] `cargo login`, then `cargo publish` from `packages/rust` (first version, 0.1.0).
- [ ] Crate settings → Trusted Publishing: repository `shukka-app/sdk`, workflow
      `publish.yml`.
- [ ] Add a `crates` job using `rust-lang/crates-io-auth-action@v1` and
      `cargo publish --token "$TOKEN"`.

## Later

- [ ] Nested model naming: top-level bodies are named components, nested objects still come
      out as `AppDetailChannelsInner`. Naming them upstream finishes the job.
- [ ] Upload helper per language (`initUpload → presigned PUT → finalizeUpload`).
- [ ] Release assets: shukka publishes `openapi.json` + `openapi.v3.0.json` with a release,
      and `repository_dispatch` sends `spec_base_url` here (the workflow already reads it).
