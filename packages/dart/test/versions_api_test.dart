import 'package:test/test.dart';
import 'package:shukka_sdk/shukka_sdk.dart';


/// tests for VersionsApi
void main() {
  final instance = ShukkaSdk().getVersionsApi();

  group(VersionsApi, () {
    // Delete a version
    //
    // Deletes the version and its objects.
    //
    //Future<OkResponse> deleteVersion(String appSlug, String channel, String version) async
    test('test deleteVersion', () async {
      // TODO
    });

    // Get artifact
    //
    // Presigned GET for one artifact on that version (drafts included). Does not increment hits.
    //
    //Future getArtifact(String appSlug, String channel, String version, String filename) async
    test('test getArtifact', () async {
      // TODO
    });

    // Get release metadata
    //
    // Read custom metadata for an exact version. Released versions are public; drafts require a session or bound app key. Explicit Authorization is validated (401/403). Returns no-store and does not increment update checks. Independent of release log.
    //
    //Future<ReleaseMetadata> getReleaseMetadata(String appSlug, String channel, String version) async
    test('test getReleaseMetadata', () async {
      // TODO
    });

    // Version hit trend
    //
    // Empty for drafts.
    //
    //Future<VersionTrend> getVersionTrend(String appSlug, String channel, String version) async
    test('test getVersionTrend', () async {
      // TODO
    });

    // Replace release metadata
    //
    // Replace the whole metadata object (16 KiB UTF-8 JSON); {} clears it. Last write wins.
    //
    //Future<ReleaseMetadata> replaceReleaseMetadata(String appSlug, String channel, String version, ReplaceReleaseMetadataRequest replaceReleaseMetadataRequest) async
    test('test replaceReleaseMetadata', () async {
      // TODO
    });

  });
}
