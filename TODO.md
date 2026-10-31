# TODO

Ordered the way they should be done. Everything here needs the repository to exist first.

## 1. Contract tests in CI

The generators are verified to *compile*; nothing yet proves a generated client can talk to a
real shukka. This is the highest-value next step — it catches generator upgrades, contract
drift, and wire-format mistakes (302 downloads, YAML/XML feeds, nullable fields).

- [ ] `tests/contract/` with one runner per language, plus `scripts/test-contract.mjs` that
      starts `ghcr.io/shukka-app/shukka` + MinIO (`docker compose`), waits for `/api/health`,
      creates an admin password and an app-scoped key, then runs each language's runner.
- [ ] Cover only the read surface first: `getApp` → `listChannels` → `listPublicNotes` →
      `getChannelFeed` → `getFeedFile`. Upload stays out until its SDK helper exists.
- [ ] Assert the parts that are easy to get wrong: bearer auth, path encoding
      (`appSlug` with dashes/underscores), nullable fields present as `null` rather than
      missing, 302 download not followed into the body.
- [ ] Workflow: `.github/workflows/contract.yml`, required check, runs on PRs that touch
      `spec/` or `packages/`.
- [ ] Teardown must not leave containers behind; the job should fail loudly on timeout.

## 2. Publishing config (dry run, no credentials)

- [ ] npm — `pnpm --filter @shukka/sdk publish --dry-run`: check `files`, `exports`,
      `main`/`module`/`types`, and that `dist/` is the only thing shipped.
- [ ] pub.dev — `dart pub publish --dry-run` in `packages/dart`: the generator's
      `pubspec.yaml` must have a valid `homepage`/`repository` and no uncommitted
      `.dart_tool`; also check the package description length limit.
- [ ] crates.io — `cargo publish --dry-run` in `packages/rust`: `readme`, `license`,
      `repository` are set; confirm the `shukka` crate name is actually free (the public API
      returned 403 from this network, so this is unverified).
- [ ] Swift — no registry: publishing is the git tag itself. Verify
      `swift package describe` and that `Sources/ShukkaSDK/openapi.json` is committed.
- [ ] Name availability checked on 2026-10-30: `@shukka/sdk` (npm) free, `shukka_sdk`
      (pub.dev) free. Re-check right before the first publish.
- [ ] Versioning: one `vX.Y.Z` for all four, matching the shukka release the spec came from.
      The contract's `info.version` is still hard-coded `1.0.0` — fix that upstream first, or
      take the version from the release tag.

## 3. npm trusted publishing (OIDC)

- [ ] Register this repo + the `publish.yml` workflow as a trusted publisher for
      `@shukka/sdk` on npmjs.com (package must exist first, so the first release may need a
      one-off `NPM_TOKEN`).
- [ ] Workflow: `permissions: { contents: read, id-token: write }`, npm 11+, then
      `npm publish --provenance --access public`. No token in secrets.
- [ ] Sanity check afterwards: the package page shows a provenance badge and the publish log
      shows the OIDC exchange.
- [ ] Same path later for crates.io Trusted Publishing and pub.dev OIDC authentication; both
      now support it, so avoid long-lived registry tokens entirely.

## Later

- [ ] Nested model naming: top-level bodies are named components, nested objects still come
      out as `AppDetailChannelsInner`. Naming them upstream finishes the job.
- [ ] Upload helper per language (`initUpload → presigned PUT → finalizeUpload`).
- [ ] Release flow: shukka publishes `openapi.json` + `openapi.v3.0.json` as release assets,
      `repository_dispatch` lands here, `fetch-spec.mjs` reads the assets instead of the docs
      site, PR with the regenerated diff, tag + fan out.
- [ ] Add the repo as a submodule of the monorepo once it exists (alongside `shukka` and
      `docs`).
