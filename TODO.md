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

## 3. npm trusted publishing — workflow done, registration pending

`.github/workflows/publish.yml` publishes on a `vX.Y.Z` tag with
`permissions: { contents: read, id-token: write }`, npm 11, and
`npm publish --provenance --access public`. No token in secrets.

- [ ] Create the package once (it must exist before npm accepts a trusted publisher), likely
      with a one-off `NPM_TOKEN`.
- [ ] Register `shukka-app/sdk` + `publish.yml` as the trusted publisher for `@shukka/sdk`.
- [ ] After the first OIDC publish: the package page shows a provenance badge and the log
      shows the OIDC exchange.

## Later

- [ ] Nested model naming: top-level bodies are named components, nested objects still come
      out as `AppDetailChannelsInner`. Naming them upstream finishes the job.
- [ ] Upload helper per language (`initUpload → presigned PUT → finalizeUpload`).
- [ ] Release assets: shukka publishes `openapi.json` + `openapi.v3.0.json` with a release,
      and `repository_dispatch` sends `spec_base_url` here (the workflow already reads it).
- [ ] crates.io Trusted Publishing and pub.dev OIDC, so no registry tokens exist at all.
