import 'package:test/test.dart';
import 'package:shukka_sdk/shukka_sdk.dart';


/// tests for AppApi
void main() {
  final instance = ShukkaSdk().getAppApi();

  group(AppApi, () {
    // Get app
    //
    // App detail including channels, versions, and keys.
    //
    //Future<AppDetail> getApp(String appSlug) async
    test('test getApp', () async {
      // TODO
    });

    // Update app settings
    //
    // Probes S3. API keys may only change `name`. Slug and storage fields are session-only; resubmitting unchanged values is allowed. Changing endpoint/bucket/prefix with existing artifacts probes the newest object at the new location.
    //
    //Future<AppUpdated> updateApp(String appSlug, AppUpdateRequest appUpdateRequest) async
    test('test updateApp', () async {
      // TODO
    });

  });
}
