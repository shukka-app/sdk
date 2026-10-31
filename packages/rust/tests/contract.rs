//! Contract test for the generated Rust client.
//!
//! Run through `scripts/test-contract.mjs`, which sets the `SHUKKA_CONTRACT_*`
//! variables. Without them the test skips, so a plain `cargo test` stays green.

use std::env;

fn required(name: &str) -> String {
    env::var(name).unwrap_or_else(|_| panic!("{name} is required"))
}

#[tokio::test]
async fn read_surface() {
    if env::var("SHUKKA_CONTRACT_URL").is_err() {
        eprintln!("skipping contract test: SHUKKA_CONTRACT_URL is not set");
        return;
    }

    let base = required("SHUKKA_CONTRACT_URL");
    let app_slug = required("SHUKKA_CONTRACT_APP");
    let channel = required("SHUKKA_CONTRACT_CHANNEL");
    let version = required("SHUKKA_CONTRACT_VERSION");
    let api_key = required("SHUKKA_CONTRACT_KEY");
    let note = required("SHUKKA_CONTRACT_NOTE");

    let client = shukka::with_api_key(&base, &api_key);

    let detail = client
        .get_app(&app_slug)
        .await
        .expect("getApp")
        .into_inner();
    assert_eq!(detail.app.slug, app_slug);
    assert_eq!(
        detail.app.updater_kind,
        shukka::types::AppDetailAppUpdaterKind::Tauri
    );
    assert!(detail.app.s3_endpoint.is_some(), "s3Endpoint should be present");
    assert!(detail.keys.is_empty(), "keys leaked into an API-key response");
    println!("rust getApp ok: {} ({})", detail.app.slug, detail.app.updater_kind);

    let channels = client
        .list_channels(&app_slug)
        .await
        .expect("listChannels")
        .into_inner();
    let entry = channels
        .channels
        .iter()
        .find(|candidate| candidate.name == channel)
        .unwrap_or_else(|| panic!("listChannels has no {channel} channel"));
    assert!(entry.current_version_id.is_some(), "channel has no current version");
    println!("rust listChannels ok: {}", entry.name);

    let notes = client
        .list_public_notes(&app_slug, &channel, None, None, None)
        .await
        .expect("listPublicNotes")
        .into_inner();
    let public_note = notes
        .notes
        .iter()
        .find(|candidate| candidate.version == version)
        .unwrap_or_else(|| panic!("listPublicNotes has no note for {version}"));
    assert!(public_note.markdown.contains(&note), "note markdown does not match");
    assert_eq!(public_note.locale, "en");
    println!("rust listPublicNotes ok: {} ({})", public_note.version, public_note.locale);

    let feed = client
        .get_channel_feed(&app_slug, &channel)
        .await
        .expect("getChannelFeed")
        .into_inner();
    assert_eq!(feed.version, version);
    assert!(!feed.platforms.is_empty(), "feed has no platforms");
    println!("rust getChannelFeed ok: {}", feed.version);

    let file = client
        .get_feed_file(&app_slug, &channel, "latest.json")
        .await
        .expect("getFeedFile")
        .into_inner();
    assert_eq!(file.version, version);
    println!("rust getFeedFile ok: latest.json");
}
