import 'package:test/test.dart';
import 'package:shukka_sdk/shukka_sdk.dart';


/// tests for UploadApi
void main() {
  final instance = ShukkaSdk().getUploadApi();

  group(UploadApi, () {
    // Finalize upload
    //
    // Creates a version. Default is draft; `release: true` goes live.
    //
    //Future<UploadFinalizeResponse> finalizeUpload(FinalizeUploadRequest finalizeUploadRequest) async
    test('test finalizeUpload', () async {
      // TODO
    });

    // Start upload
    //
    // Start a pending upload. Electron requires at least one `.yml`; Tauri requires `latest.json` and/or artifact+`.sig` pairs; Sparkle requires `appcast.xml` and/or archive+`.sig` (see spec).
    //
    //Future<UploadInitResponse> initUpload(InitUploadRequest initUploadRequest) async
    test('test initUpload', () async {
      // TODO
    });

  });
}
