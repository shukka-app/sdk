//! Rust client for the [`shukka`](https://github.com/shukka-app/shukka) release API.
//!
//! The client is generated at build time from `spec/openapi-3.0.json` with
//! [progenitor](https://github.com/oxidecomputer/progenitor). Do not edit this
//! file to change the API surface — change the contract instead.
//!
//! ```no_run
//! # async fn demo() -> Result<(), progenitor_client::Error<()>> {
//! let client = shukka::with_api_key("https://updates.example.com", "shk_…");
//! let app = client.get_app("demo").await?;
//! # let _ = app;
//! # Ok(())
//! # }
//! ```
include!(concat!(env!("OUT_DIR"), "/codegen.rs"));

/// A [`Client`] that sends `Authorization: Bearer <api_key>` on every request.
///
/// Use [`Client::new`] instead for the public feed and notes operations.
pub fn with_api_key(baseurl: &str, api_key: &str) -> Client {
    use reqwest::header::{HeaderMap, HeaderValue, AUTHORIZATION};

    let mut value = HeaderValue::from_str(&format!("Bearer {api_key}"))
        .expect("API key contains characters that are not valid in a header");
    value.set_sensitive(true);

    let mut headers = HeaderMap::new();
    headers.insert(AUTHORIZATION, value);

    let http = reqwest::Client::builder()
        .default_headers(headers)
        .build()
        .expect("build reqwest client");

    Client::new_with_client(baseurl, http)
}
