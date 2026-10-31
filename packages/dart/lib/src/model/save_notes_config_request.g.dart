// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_notes_config_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SaveNotesConfigRequestCWProxy {
  SaveNotesConfigRequest enabled(bool enabled);

  SaveNotesConfigRequest locales(List<String> locales);

  SaveNotesConfigRequest fallbackLocale(String fallbackLocale);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SaveNotesConfigRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SaveNotesConfigRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  SaveNotesConfigRequest call({
    bool enabled,
    List<String> locales,
    String fallbackLocale,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSaveNotesConfigRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSaveNotesConfigRequest.copyWith.fieldName(...)`
class _$SaveNotesConfigRequestCWProxyImpl
    implements _$SaveNotesConfigRequestCWProxy {
  const _$SaveNotesConfigRequestCWProxyImpl(this._value);

  final SaveNotesConfigRequest _value;

  @override
  SaveNotesConfigRequest enabled(bool enabled) => this(enabled: enabled);

  @override
  SaveNotesConfigRequest locales(List<String> locales) =>
      this(locales: locales);

  @override
  SaveNotesConfigRequest fallbackLocale(String fallbackLocale) =>
      this(fallbackLocale: fallbackLocale);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SaveNotesConfigRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SaveNotesConfigRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  SaveNotesConfigRequest call({
    Object? enabled = const $CopyWithPlaceholder(),
    Object? locales = const $CopyWithPlaceholder(),
    Object? fallbackLocale = const $CopyWithPlaceholder(),
  }) {
    return SaveNotesConfigRequest(
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

extension $SaveNotesConfigRequestCopyWith on SaveNotesConfigRequest {
  /// Returns a callable class that can be used as follows: `instanceOfSaveNotesConfigRequest.copyWith(...)` or like so:`instanceOfSaveNotesConfigRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SaveNotesConfigRequestCWProxy get copyWith =>
      _$SaveNotesConfigRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveNotesConfigRequest _$SaveNotesConfigRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SaveNotesConfigRequest', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['enabled', 'locales', 'fallbackLocale'],
  );
  final val = SaveNotesConfigRequest(
    enabled: $checkedConvert('enabled', (v) => v as bool),
    locales: $checkedConvert(
      'locales',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    fallbackLocale: $checkedConvert('fallbackLocale', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$SaveNotesConfigRequestToJson(
  SaveNotesConfigRequest instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'locales': instance.locales,
  'fallbackLocale': instance.fallbackLocale,
};
