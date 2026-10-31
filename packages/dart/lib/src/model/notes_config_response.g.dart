// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_config_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NotesConfigResponseCWProxy {
  NotesConfigResponse releaseLog(NotesConfigResponseReleaseLog releaseLog);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NotesConfigResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NotesConfigResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  NotesConfigResponse call({NotesConfigResponseReleaseLog releaseLog});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNotesConfigResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNotesConfigResponse.copyWith.fieldName(...)`
class _$NotesConfigResponseCWProxyImpl implements _$NotesConfigResponseCWProxy {
  const _$NotesConfigResponseCWProxyImpl(this._value);

  final NotesConfigResponse _value;

  @override
  NotesConfigResponse releaseLog(NotesConfigResponseReleaseLog releaseLog) =>
      this(releaseLog: releaseLog);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NotesConfigResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NotesConfigResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  NotesConfigResponse call({
    Object? releaseLog = const $CopyWithPlaceholder(),
  }) {
    return NotesConfigResponse(
      releaseLog: releaseLog == const $CopyWithPlaceholder()
          ? _value.releaseLog
          // ignore: cast_nullable_to_non_nullable
          : releaseLog as NotesConfigResponseReleaseLog,
    );
  }
}

extension $NotesConfigResponseCopyWith on NotesConfigResponse {
  /// Returns a callable class that can be used as follows: `instanceOfNotesConfigResponse.copyWith(...)` or like so:`instanceOfNotesConfigResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NotesConfigResponseCWProxy get copyWith =>
      _$NotesConfigResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotesConfigResponse _$NotesConfigResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('NotesConfigResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['releaseLog']);
      final val = NotesConfigResponse(
        releaseLog: $checkedConvert(
          'releaseLog',
          (v) =>
              NotesConfigResponseReleaseLog.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$NotesConfigResponseToJson(
  NotesConfigResponse instance,
) => <String, dynamic>{'releaseLog': instance.releaseLog.toJson()};
