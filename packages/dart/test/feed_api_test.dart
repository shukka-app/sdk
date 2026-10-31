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
