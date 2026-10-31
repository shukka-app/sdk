# shukka

Rust client for the [Shukka](https://github.com/shukka-app/shukka) release API.

```toml
[dependencies]
shukka = "0.1"
```

```rust,no_run
#[tokio::main]
async fn main() -> Result<(), progenitor_client::Error<()>> {
    let client = shukka::with_api_key("https://updates.example.com", "shk_…");

    let app = client.get_app("demo").await?;
    println!("{}", app.into_inner().app.name);

    // Public feed and notes need no key.
    let public = shukka::Client::new("https://updates.example.com");
    let notes = public.list_public_notes("demo", "stable", None, None, None).await?;
    Ok(())
}
```

The client is generated at build time by [progenitor](https://github.com/oxidecomputer/progenitor)
from `openapi.json` next to `Cargo.toml` (`build.rs`); `scripts/generate.mjs` refreshes that
copy from `spec/openapi-3.0.json` so the published crate is self-contained. progenitor only
accepts OpenAPI 3.0.x and requires a unique `operationId` per operation — both are guarantees
of the shukka contract.
