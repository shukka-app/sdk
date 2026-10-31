// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_update_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AppUpdateRequestCWProxy {
  AppUpdateRequest name(String name);

  AppUpdateRequest slug(String slug);

  AppUpdateRequest s3Endpoint(String? s3Endpoint);

  AppUpdateRequest s3Region(String s3Region);

  AppUpdateRequest s3Bucket(String s3Bucket);

  AppUpdateRequest s3Prefix(String? s3Prefix);

  AppUpdateRequest s3AccessKeyId(String s3AccessKeyId);

  AppUpdateRequest s3SecretAccessKey(String? s3SecretAccessKey);

  AppUpdateRequest s3ForcePathStyle(bool? s3ForcePathStyle);

  AppUpdateRequest updaterKind(AppUpdateRequestUpdaterKindEnum? updaterKind);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppUpdateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppUpdateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  AppUpdateRequest call({
    String name,
    String slug,
    String? s3Endpoint,
    String s3Region,
    String s3Bucket,
    String? s3Prefix,
    String s3AccessKeyId,
    String? s3SecretAccessKey,
    bool? s3ForcePathStyle,
    AppUpdateRequestUpdaterKindEnum? updaterKind,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAppUpdateRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAppUpdateRequest.copyWith.fieldName(...)`
class _$AppUpdateRequestCWProxyImpl implements _$AppUpdateRequestCWProxy {
  const _$AppUpdateRequestCWProxyImpl(this._value);

  final AppUpdateRequest _value;

  @override
  AppUpdateRequest name(String name) => this(name: name);

  @override
  AppUpdateRequest slug(String slug) => this(slug: slug);

  @override
  AppUpdateRequest s3Endpoint(String? s3Endpoint) =>
      this(s3Endpoint: s3Endpoint);

  @override
  AppUpdateRequest s3Region(String s3Region) => this(s3Region: s3Region);

  @override
  AppUpdateRequest s3Bucket(String s3Bucket) => this(s3Bucket: s3Bucket);

  @override
  AppUpdateRequest s3Prefix(String? s3Prefix) => this(s3Prefix: s3Prefix);

  @override
  AppUpdateRequest s3AccessKeyId(String s3AccessKeyId) =>
      this(s3AccessKeyId: s3AccessKeyId);

  @override
  AppUpdateRequest s3SecretAccessKey(String? s3SecretAccessKey) =>
      this(s3SecretAccessKey: s3SecretAccessKey);

  @override
  AppUpdateRequest s3ForcePathStyle(bool? s3ForcePathStyle) =>
      this(s3ForcePathStyle: s3ForcePathStyle);

  @override
  AppUpdateRequest updaterKind(AppUpdateRequestUpdaterKindEnum? updaterKind) =>
      this(updaterKind: updaterKind);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppUpdateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppUpdateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  AppUpdateRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? slug = const $CopyWithPlaceholder(),
    Object? s3Endpoint = const $CopyWithPlaceholder(),
    Object? s3Region = const $CopyWithPlaceholder(),
    Object? s3Bucket = const $CopyWithPlaceholder(),
    Object? s3Prefix = const $CopyWithPlaceholder(),
    Object? s3AccessKeyId = const $CopyWithPlaceholder(),
    Object? s3SecretAccessKey = const $CopyWithPlaceholder(),
    Object? s3ForcePathStyle = const $CopyWithPlaceholder(),
    Object? updaterKind = const $CopyWithPlaceholder(),
  }) {
    return AppUpdateRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      slug: slug == const $CopyWithPlaceholder()
          ? _value.slug
          // ignore: cast_nullable_to_non_nullable
          : slug as String,
      s3Endpoint: s3Endpoint == const $CopyWithPlaceholder()
          ? _value.s3Endpoint
          // ignore: cast_nullable_to_non_nullable
          : s3Endpoint as String?,
      s3Region: s3Region == const $CopyWithPlaceholder()
          ? _value.s3Region
          // ignore: cast_nullable_to_non_nullable
          : s3Region as String,
      s3Bucket: s3Bucket == const $CopyWithPlaceholder()
          ? _value.s3Bucket
          // ignore: cast_nullable_to_non_nullable
          : s3Bucket as String,
      s3Prefix: s3Prefix == const $CopyWithPlaceholder()
          ? _value.s3Prefix
          // ignore: cast_nullable_to_non_nullable
          : s3Prefix as String?,
      s3AccessKeyId: s3AccessKeyId == const $CopyWithPlaceholder()
          ? _value.s3AccessKeyId
          // ignore: cast_nullable_to_non_nullable
          : s3AccessKeyId as String,
      s3SecretAccessKey: s3SecretAccessKey == const $CopyWithPlaceholder()
          ? _value.s3SecretAccessKey
          // ignore: cast_nullable_to_non_nullable
          : s3SecretAccessKey as String?,
      s3ForcePathStyle: s3ForcePathStyle == const $CopyWithPlaceholder()
          ? _value.s3ForcePathStyle
          // ignore: cast_nullable_to_non_nullable
          : s3ForcePathStyle as bool?,
      updaterKind: updaterKind == const $CopyWithPlaceholder()
          ? _value.updaterKind
          // ignore: cast_nullable_to_non_nullable
          : updaterKind as AppUpdateRequestUpdaterKindEnum?,
    );
  }
}

extension $AppUpdateRequestCopyWith on AppUpdateRequest {
  /// Returns a callable class that can be used as follows: `instanceOfAppUpdateRequest.copyWith(...)` or like so:`instanceOfAppUpdateRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AppUpdateRequestCWProxy get copyWith => _$AppUpdateRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUpdateRequest _$AppUpdateRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AppUpdateRequest', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const [
          'name',
          'slug',
          's3Region',
          's3Bucket',
          's3AccessKeyId',
        ],
      );
      final val = AppUpdateRequest(
        name: $checkedConvert('name', (v) => v as String),
        slug: $checkedConvert('slug', (v) => v as String),
        s3Endpoint: $checkedConvert('s3Endpoint', (v) => v as String?),
        s3Region: $checkedConvert('s3Region', (v) => v as String),
        s3Bucket: $checkedConvert('s3Bucket', (v) => v as String),
        s3Prefix: $checkedConvert('s3Prefix', (v) => v as String? ?? ''),
        s3AccessKeyId: $checkedConvert('s3AccessKeyId', (v) => v as String),
        s3SecretAccessKey: $checkedConvert(
          's3SecretAccessKey',
          (v) => v as String?,
        ),
        s3ForcePathStyle: $checkedConvert(
          's3ForcePathStyle',
          (v) => v as bool? ?? false,
        ),
        updaterKind: $checkedConvert(
          'updaterKind',
          (v) => $enumDecodeNullable(
            _$AppUpdateRequestUpdaterKindEnumEnumMap,
            v,
            unknownValue: AppUpdateRequestUpdaterKindEnum.unknownDefaultOpenApi,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AppUpdateRequestToJson(AppUpdateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      's3Endpoint': ?instance.s3Endpoint,
      's3Region': instance.s3Region,
      's3Bucket': instance.s3Bucket,
      's3Prefix': ?instance.s3Prefix,
      's3AccessKeyId': instance.s3AccessKeyId,
      's3SecretAccessKey': ?instance.s3SecretAccessKey,
      's3ForcePathStyle': ?instance.s3ForcePathStyle,
      'updaterKind':
          ?_$AppUpdateRequestUpdaterKindEnumEnumMap[instance.updaterKind],
    };

const _$AppUpdateRequestUpdaterKindEnumEnumMap = {
  AppUpdateRequestUpdaterKindEnum.electron: 'electron',
  AppUpdateRequestUpdaterKindEnum.tauri: 'tauri',
  AppUpdateRequestUpdaterKindEnum.sparkle: 'sparkle',
  AppUpdateRequestUpdaterKindEnum.sdk: 'sdk',
  AppUpdateRequestUpdaterKindEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
