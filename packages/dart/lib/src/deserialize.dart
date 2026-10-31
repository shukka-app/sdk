import 'package:shukka_sdk/src/model/app_detail.dart';
import 'package:shukka_sdk/src/model/app_detail_app.dart';
import 'package:shukka_sdk/src/model/app_detail_channels_inner.dart';
import 'package:shukka_sdk/src/model/app_detail_channels_inner_versions_inner.dart';
import 'package:shukka_sdk/src/model/app_detail_channels_inner_versions_inner_artifacts_inner.dart';
import 'package:shukka_sdk/src/model/app_detail_keys_inner.dart';
import 'package:shukka_sdk/src/model/app_update_request.dart';
import 'package:shukka_sdk/src/model/app_updated.dart';
import 'package:shukka_sdk/src/model/channel_created.dart';
import 'package:shukka_sdk/src/model/channel_list.dart';
import 'package:shukka_sdk/src/model/channel_list_channels_inner.dart';
import 'package:shukka_sdk/src/model/channel_trend.dart';
import 'package:shukka_sdk/src/model/channel_trend_points_inner.dart';
import 'package:shukka_sdk/src/model/create_channel_request.dart';
import 'package:shukka_sdk/src/model/editor_notes.dart';
import 'package:shukka_sdk/src/model/editor_notes_notes_inner.dart';
import 'package:shukka_sdk/src/model/error.dart';
import 'package:shukka_sdk/src/model/finalize_upload_request.dart';
import 'package:shukka_sdk/src/model/init_upload_request.dart';
import 'package:shukka_sdk/src/model/init_upload_request_files_inner.dart';
import 'package:shukka_sdk/src/model/notes_config_response.dart';
import 'package:shukka_sdk/src/model/notes_config_response_release_log.dart';
import 'package:shukka_sdk/src/model/ok_response.dart';
import 'package:shukka_sdk/src/model/public_notes.dart';
import 'package:shukka_sdk/src/model/public_notes_notes_inner.dart';
import 'package:shukka_sdk/src/model/release_metadata.dart';
import 'package:shukka_sdk/src/model/replace_release_metadata_request.dart';
import 'package:shukka_sdk/src/model/save_notes_config_request.dart';
import 'package:shukka_sdk/src/model/saved_note.dart';
import 'package:shukka_sdk/src/model/set_current_version_request.dart';
import 'package:shukka_sdk/src/model/tauri_feed.dart';
import 'package:shukka_sdk/src/model/tauri_feed_platforms_value.dart';
import 'package:shukka_sdk/src/model/upload_finalize_response.dart';
import 'package:shukka_sdk/src/model/upload_finalize_response_artifacts_inner.dart';
import 'package:shukka_sdk/src/model/upload_init_response.dart';
import 'package:shukka_sdk/src/model/upload_init_response_files_inner.dart';
import 'package:shukka_sdk/src/model/upsert_note_request.dart';
import 'package:shukka_sdk/src/model/version_trend.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

  ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType, {bool growable= true}) {
      switch (targetType) {
        case 'String':
          return '$value' as ReturnType;
        case 'int':
          return (value is int ? value : int.parse('$value')) as ReturnType;
        case 'bool':
          if (value is bool) {
            return value as ReturnType;
          }
          final valueString = '$value'.toLowerCase();
          return (valueString == 'true' || valueString == '1') as ReturnType;
        case 'double':
          return (value is double ? value : double.parse('$value')) as ReturnType;
        case 'AppDetail':
          return AppDetail.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AppDetailApp':
          return AppDetailApp.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AppDetailChannelsInner':
          return AppDetailChannelsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AppDetailChannelsInnerVersionsInner':
          return AppDetailChannelsInnerVersionsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AppDetailChannelsInnerVersionsInnerArtifactsInner':
          return AppDetailChannelsInnerVersionsInnerArtifactsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AppDetailKeysInner':
          return AppDetailKeysInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AppUpdateRequest':
          return AppUpdateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AppUpdated':
          return AppUpdated.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChannelCreated':
          return ChannelCreated.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChannelList':
          return ChannelList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChannelListChannelsInner':
          return ChannelListChannelsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChannelTrend':
          return ChannelTrend.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChannelTrendPointsInner':
          return ChannelTrendPointsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateChannelRequest':
          return CreateChannelRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EditorNotes':
          return EditorNotes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EditorNotesNotesInner':
          return EditorNotesNotesInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Error':
          return Error.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'FinalizeUploadRequest':
          return FinalizeUploadRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InitUploadRequest':
          return InitUploadRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InitUploadRequestFilesInner':
          return InitUploadRequestFilesInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'NotesConfigResponse':
          return NotesConfigResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'NotesConfigResponseReleaseLog':
          return NotesConfigResponseReleaseLog.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OkResponse':
          return OkResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PublicNotes':
          return PublicNotes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PublicNotesNotesInner':
          return PublicNotesNotesInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReleaseMetadata':
          return ReleaseMetadata.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReplaceReleaseMetadataRequest':
          return ReplaceReleaseMetadataRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SaveNotesConfigRequest':
          return SaveNotesConfigRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SavedNote':
          return SavedNote.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SetCurrentVersionRequest':
          return SetCurrentVersionRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TauriFeed':
          return TauriFeed.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TauriFeedPlatformsValue':
          return TauriFeedPlatformsValue.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UploadFinalizeResponse':
          return UploadFinalizeResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UploadFinalizeResponseArtifactsInner':
          return UploadFinalizeResponseArtifactsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UploadInitResponse':
          return UploadInitResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UploadInitResponseFilesInner':
          return UploadInitResponseFilesInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpsertNoteRequest':
          return UpsertNoteRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VersionTrend':
          return VersionTrend.fromJson(value as Map<String, dynamic>) as ReturnType;
        default:
          RegExpMatch? match;

          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toList(growable: growable) as ReturnType;
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toSet() as ReturnType;
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match![1]!.trim(); // ignore: parameter_assignments
            return Map<String, BaseType>.fromIterables(
              value.keys as Iterable<String>,
              value.values.map((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable)),
            ) as ReturnType;
          }
          break;
    }
    throw Exception('Cannot deserialize');
  }