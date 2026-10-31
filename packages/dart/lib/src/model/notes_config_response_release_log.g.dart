// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_config_response_release_log.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NotesConfigResponseReleaseLogCWProxy {
  NotesConfigResponseReleaseLog enabled(bool enabled);

  NotesConfigResponseReleaseLog locales(List<String> locales);

  NotesConfigResponseReleaseLog fallbackLocale(String fallbackLocale);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NotesConfigResponseReleaseLog(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NotesConfigResponseReleaseLog(...).copyWith(id: 12, name: "My name")
  /// ````
  NotesConfigResponseReleaseLog call({
    bool enabled,
    List<String> locales,
    String fallbackLocale,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNotesConfigResponseReleaseLog.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNotesConfigResponseReleaseLog.copyWith.fieldName(...)`
class _$NotesConfigResponseReleaseLogCWProxyImpl
    implements _$NotesConfigResponseReleaseLogCWProxy {
  const _$NotesConfigResponseReleaseLogCWProxyImpl(this._value);

  final NotesConfigResponseReleaseLog _value;

  @override
  NotesConfigResponseReleaseLog enabled(bool enabled) => this(enabled: enabled);

  @override
  NotesConfigResponseReleaseLog locales(List<String> locales) =>
      this(locales: locales);

  @override
  NotesConfigResponseReleaseLog fallbackLocale(String fallbackLocale) =>
      this(fallbackLocale: fallbackLocale);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NotesConfigResponseReleaseLog(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NotesConfigResponseReleaseLog(...).copyWith(id: 12, name: "My name")
  /// ````
  NotesConfigResponseReleaseLog call({
    Object? enabled = const $CopyWithPlaceholder(),
    Object? locales = const $CopyWithPlaceholder(),
    Object? fallbackLocale = const $CopyWithPlaceholder(),
  }) {
    return NotesConfigResponseReleaseLog(
      enabled: enabled == const $CopyWithPlaceholder()
          ? _value.enabled
          // ignore: cast_nullable_to_non_nullable
          : enabled as bool,
      locales: locales == const $CopyWithPlaceholder()
          ? _value.locales
          // ignore: cast_nullable_to_non_nullable
          : locales as List<String>,
      fallbackLocale: fallbackLocale == const $CopyWithPlaceholder()
          ? _value.fallbackLocale
          // ignore: cast_nullable_to_non_nullable
          : fallbackLocale as String,
    );
  }
}

extension $NotesConfigResponseReleaseLogCopyWith
    on NotesConfigResponseReleaseLog {
  /// Returns a callable class that can be used as follows: `instanceOfNotesConfigResponseReleaseLog.copyWith(...)` or like so:`instanceOfNotesConfigResponseReleaseLog.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NotesConfigResponseReleaseLogCWProxy get copyWith =>
      _$NotesConfigResponseReleaseLogCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotesConfigResponseReleaseLog _$NotesConfigResponseReleaseLogFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('NotesConfigResponseReleaseLog', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['enabled', 'locales', 'fallbackLocale'],
  );
  final val = NotesConfigResponseReleaseLog(
    enabled: $checkedConvert('enabled', (v) => v as bool),
    locales: $checkedConvert(
      'locales',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    fallbackLocale: $checkedConvert('fallbackLocale', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$NotesConfigResponseReleaseLogToJson(
  NotesConfigResponseReleaseLog instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'locales': instance.locales,
  'fallbackLocale': instance.fallbackLocale,
};
