// Contract test for the generated Dart SDK. Driven by scripts/test-contract.mjs.
import 'dart:io';

import 'package:shukka_sdk/shukka_sdk.dart';

Never fail(String message) {
  stderr.writeln('FAIL: $message');
  exit(1);
}

String required(String name) {
  final value = Platform.environment[name];
  if (value == null || value.isEmpty) fail('$name is required');
  return value;
}

Future<void> main() async {
  final baseUrl = required('SHUKKA_CONTRACT_URL');
  final appSlug = required('SHUKKA_CONTRACT_APP');
  final channel = required('SHUKKA_CONTRACT_CHANNEL');
  final version = required('SHUKKA_CONTRACT_VERSION');
  final apiKey = required('SHUKKA_CONTRACT_KEY');
  final note = required('SHUKKA_CONTRACT_NOTE');

  final sdk = ShukkaSdk(basePathOverride: baseUrl);
  sdk.setBearerAuth('apiKey', apiKey);

  final detail = (await sdk.getAppApi().getApp(appSlug: appSlug)).data!;
  if (detail.app.slug != appSlug) fail('getApp returned slug ${detail.app.slug}');
  if (detail.app.updaterKind != AppDetailAppUpdaterKindEnum.tauri) {
    fail('updaterKind is ${detail.app.updaterKind}');
  }
  if (detail.app.s3Endpoint == null) fail('s3Endpoint should be present');
  if (detail.keys != null && detail.keys!.isNotEmpty) fail('keys leaked into an API-key response');
  stdout.writeln('dart getApp ok: ${detail.app.slug} (${detail.app.updaterKind.value})');

  final channels = (await sdk.getChannelsApi().listChannels(appSlug: appSlug)).data!;
  final matches = channels.channels.where((entry) => entry.name == channel).toList();
  if (matches.isEmpty) fail('listChannels has no "$channel" channel');
  if (matches.first.currentVersionId == null) fail('channel "$channel" has no current version');
  stdout.writeln('dart listChannels ok: ${channels.channels.map((entry) => entry.name).join(', ')}');

  final notes = (await sdk.getNotesApi().listPublicNotes(appSlug: appSlug, channel: channel)).data!;
  final publicNotes = notes.notes.where((entry) => entry.version == version).toList();
  if (publicNotes.isEmpty) fail('listPublicNotes has no note for $version');
  final publicNote = publicNotes.first;
  if (!publicNote.markdown.contains(note)) fail('public note markdown does not match the fixture');
  if (publicNote.locale != 'en') fail('public note locale is ${publicNote.locale}');
  stdout.writeln('dart listPublicNotes ok: ${publicNote.version} (${publicNote.locale})');

  final feed = (await sdk.getFeedApi().getChannelFeed(appSlug: appSlug, channel: channel)).data!;
  if (feed.version != version) fail('feed serves ${feed.version}, expected $version');
  if (feed.platforms.isEmpty) fail('feed has no platforms');
  stdout.writeln('dart getChannelFeed ok: ${feed.version}');

  final file = (await sdk.getFeedApi()
          .getFeedFile(appSlug: appSlug, channel: channel, filename: 'latest.json'))
      .data!;
  if (file.version != version) fail('latest.json serves ${file.version}');
  stdout.writeln('dart getFeedFile ok: latest.json');
}
