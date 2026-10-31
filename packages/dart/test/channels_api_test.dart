import 'package:test/test.dart';
import 'package:shukka_sdk/shukka_sdk.dart';


/// tests for ChannelsApi
void main() {
  final instance = ShukkaSdk().getChannelsApi();

  group(ChannelsApi, () {
    // Create a channel
    //
    //Future<ChannelCreated> createChannel(String appSlug, CreateChannelRequest createChannelRequest) async
    test('test createChannel', () async {
      // TODO
    });

    // Delete a channel
    //
    // Deletes the channel and its objects.
    //
    //Future<OkResponse> deleteChannel(String appSlug, String channel) async
    test('test deleteChannel', () async {
      // TODO
    });

    // Channel hit trend
    //
    //Future<ChannelTrend> getChannelTrend(String appSlug, String channel, { int range }) async
    test('test getChannelTrend', () async {
      // TODO
    });

    // List channels
    //
    //Future<ChannelList> listChannels(String appSlug) async
    test('test listChannels', () async {
      // TODO
    });

    // Set current version
    //
    // Promote a draft (`currentVersion`) or roll back to a released version.
    //
    //Future<OkResponse> setCurrentVersion(String appSlug, String channel, SetCurrentVersionRequest setCurrentVersionRequest) async
    test('test setCurrentVersion', () async {
      // TODO
    });

  });
}
