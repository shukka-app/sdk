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
`permissions: { contents: read, id-token: write }` and npm ≥ 11.15. No token in secrets.

npm only accepts a trusted publisher for a package that already exists, so the first
version goes up by hand once:

```bash
npm login                                      # 2FA must be on for the account
npm install -g 'npm@^11.15.0'                  # provides `npm trust`
pnpm --filter @shukka/sdk build
cd packages/typescript && npm publish --access public
npm trust github @shukka/sdk \
  --repo shukka-app/sdk --file publish.yml --allow-publish
```

- [ ] Confirm the `@shukka` scope exists on npm and the account can write to it
      (create the org at npmjs.com/org/create if it does not).
- [ ] First publish `0.1.0` with the token path above.
- [ ] `npm trust github … --allow-publish` (without it, only `npm stage publish` is allowed).
- [ ] Dispatch `publish.yml` with `dry_run: false` and a new version (e.g. `0.1.1`) to
      prove the OIDC path; the package page should then show a provenance badge.

## Later

- [ ] Nested model naming: top-level bodies are named components, nested objects still come
      out as `AppDetailChannelsInner`. Naming them upstream finishes the job.
- [ ] Upload helper per language (`initUpload → presigned PUT → finalizeUpload`).
- [ ] Release assets: shukka publishes `openapi.json` + `openapi.v3.0.json` with a release,
      and `repository_dispatch` sends `spec_base_url` here (the workflow already reads it).
- [ ] crates.io Trusted Publishing and pub.dev OIDC, so no registry tokens exist at all.
