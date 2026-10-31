import 'package:test/test.dart';
import 'package:shukka_sdk/shukka_sdk.dart';


/// tests for NotesApi
void main() {
  final instance = ShukkaSdk().getNotesApi();

  group(NotesApi, () {
    // Delete a locale note
    //
    //Future<OkResponse> deleteNote(String appSlug, String channel, String version, String locale) async
    test('test deleteNote', () async {
      // TODO
    });

    // Get editor notes
    //
    // Every locale for one version.
    //
    //Future<EditorNotes> getEditorNotes(String appSlug, String channel, String version) async
    test('test getEditorNotes', () async {
      // TODO
    });

    // Get public notes
    //
    // Released versions only; no auth.
    //
    //Future<PublicNotes> listPublicNotes(String appSlug, String channel, { String from, String to, String locale }) async
    test('test listPublicNotes', () async {
      // TODO
    });

    // Save notes config
    //
    // Saves release-log config without an S3 probe.
    //
    //Future<NotesConfigResponse> saveNotesConfig(String appSlug, SaveNotesConfigRequest saveNotesConfigRequest) async
    test('test saveNotesConfig', () async {
      // TODO
    });

    // Upsert a locale note
    //
    //Future<SavedNote> upsertNote(String appSlug, String channel, String version, String locale, UpsertNoteRequest upsertNoteRequest) async
    test('test upsertNote', () async {
      // TODO
    });

  });
}
