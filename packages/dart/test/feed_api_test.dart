import 'package:test/test.dart';
import 'package:shukka_sdk/shukka_sdk.dart';


/// tests for FeedApi
void main() {
  final instance = ShukkaSdk().getFeedApi();

  group(FeedApi, () {
    // Get channel feed
    //
    // Tauri returns JSON; Sparkle returns a one-item appcast.
    //
    //Future<TauriFeed> getChannelFeed(String appSlug, String channel) async
    test('test getChannelFeed', () async {
      // TODO
    });

    // Get channel release
    //
    // Format-neutral manifest for non-updater clients: current version, release time, and downloadable artifacts. Lists `kind: artifact` files only; each URL 302s into the feed. 404 when the channel has no released current version.
    //
    //Future<ChannelRelease> getChannelRelease(String appSlug, String channel) async
    test('test getChannelRelease', () async {
      // TODO
    });

    // Get public feed
    //
    // Electron yml / Tauri latest.json / Sparkle appcast; artifacts 302. Drafts are 404.
    //
    //Future<TauriFeed> getFeedFile(String appSlug, String channel, String filename) async
    test('test getFeedFile', () async {
      // TODO
    });

  });
}
