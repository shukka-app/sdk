// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_detail_channels_inner_versions_inner_artifacts_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AppDetailChannelsInnerVersionsInnerArtifactsInnerCWProxy {
  AppDetailChannelsInnerVersionsInnerArtifactsInner id(int id);

  AppDetailChannelsInnerVersionsInnerArtifactsInner versionId(int versionId);

  AppDetailChannelsInnerVersionsInnerArtifactsInner filename(String filename);

  AppDetailChannelsInnerVersionsInnerArtifactsInner s3Key(String s3Key);

  AppDetailChannelsInnerVersionsInnerArtifactsInner size(int size);

  AppDetailChannelsInnerVersionsInnerArtifactsInner kind(
    AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnum kind,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppDetailChannelsInnerVersionsInnerArtifactsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppDetailChannelsInnerVersionsInnerArtifactsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  AppDetailChannelsInnerVersionsInnerArtifactsInner call({
    int id,
    int versionId,
    String filename,
    String s3Key,
    int size,
    AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnum kind,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAppDetailChannelsInnerVersionsInnerArtifactsInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAppDetailChannelsInnerVersionsInnerArtifactsInner.copyWith.fieldName(...)`
class _$AppDetailChannelsInnerVersionsInnerArtifactsInnerCWProxyImpl
    implements _$AppDetailChannelsInnerVersionsInnerArtifactsInnerCWProxy {
  const _$AppDetailChannelsInnerVersionsInnerArtifactsInnerCWProxyImpl(
    this._value,
  );

  final AppDetailChannelsInnerVersionsInnerArtifactsInner _value;

  @override
  AppDetailChannelsInnerVersionsInnerArtifactsInner id(int id) => this(id: id);

  @override
  AppDetailChannelsInnerVersionsInnerArtifactsInner versionId(int versionId) =>
      this(versionId: versionId);

  @override
  AppDetailChannelsInnerVersionsInnerArtifactsInner filename(String filename) =>
      this(filename: filename);

  @override
  AppDetailChannelsInnerVersionsInnerArtifactsInner s3Key(String s3Key) =>
      this(s3Key: s3Key);

  @override
  AppDetailChannelsInnerVersionsInnerArtifactsInner size(int size) =>
      this(size: size);

  @override
  AppDetailChannelsInnerVersionsInnerArtifactsInner kind(
    AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnum kind,
  ) => this(kind: kind);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppDetailChannelsInnerVersionsInnerArtifactsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppDetailChannelsInnerVersionsInnerArtifactsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  AppDetailChannelsInnerVersionsInnerArtifactsInner call({
    Object? id = const $CopyWithPlaceholder(),
    Object? versionId = const $CopyWithPlaceholder(),
    Object? filename = const $CopyWithPlaceholder(),
    Object? s3Key = const $CopyWithPlaceholder(),
    Object? size = const $CopyWithPlaceholder(),
    Object? kind = const $CopyWithPlaceholder(),
  }) {
    return AppDetailChannelsInnerVersionsInnerArtifactsInner(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      versionId: versionId == const $CopyWithPlaceholder()
          ? _value.versionId
          // ignore: cast_nullable_to_non_nullable
          : versionId as int,
      filename: filename == const $CopyWithPlaceholder()
          ? _value.filename
          // ignore: cast_nullable_to_non_nullable
          : filename as String,
      s3Key: s3Key == const $CopyWithPlaceholder()
          ? _value.s3Key
          // ignore: cast_nullable_to_non_nullable
          : s3Key as String,
      size: size == const $CopyWithPlaceholder()
          ? _value.size
          // ignore: cast_nullable_to_non_nullable
          : size as int,
      kind: kind == const $CopyWithPlaceholder()
          ? _value.kind
          // ignore: cast_nullable_to_non_nullable
          : kind as AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnum,
    );
  }
}

extension $AppDetailChannelsInnerVersionsInnerArtifactsInnerCopyWith
    on AppDetailChannelsInnerVersionsInnerArtifactsInner {
  /// Returns a callable class that can be used as follows: `instanceOfAppDetailChannelsInnerVersionsInnerArtifactsInner.copyWith(...)` or like so:`instanceOfAppDetailChannelsInnerVersionsInnerArtifactsInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AppDetailChannelsInnerVersionsInnerArtifactsInnerCWProxy get copyWith =>
      _$AppDetailChannelsInnerVersionsInnerArtifactsInnerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppDetailChannelsInnerVersionsInnerArtifactsInner
_$AppDetailChannelsInnerVersionsInnerArtifactsInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AppDetailChannelsInnerVersionsInnerArtifactsInner', json, (
  $checkedConvert,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'versionId',
      'filename',
      's3Key',
      'size',
      'kind',
    ],
  );
  final val = AppDetailChannelsInnerVersionsInnerArtifactsInner(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    versionId: $checkedConvert('versionId', (v) => (v as num).toInt()),
    filename: $checkedConvert('filename', (v) => v as String),
    s3Key: $checkedConvert('s3Key', (v) => v as String),
    size: $checkedConvert('size', (v) => (v as num).toInt()),
    kind: $checkedConvert(
      'kind',
      (v) => $enumDecode(
        _$AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnumEnumMap,
        v,
        unknownValue: AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnum
            .unknownDefaultOpenApi,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$AppDetailChannelsInnerVersionsInnerArtifactsInnerToJson(
  AppDetailChannelsInnerVersionsInnerArtifactsInner instance,
) => <String, dynamic>{
  'id': instance.id,
  'versionId': instance.versionId,
  'filename': instance.filename,
  's3Key': instance.s3Key,
  'size': instance.size,
  'kind':
      _$AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnumEnumMap[instance
          .kind]!,
};

const _$AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnumEnumMap = {
  AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnum.metadata:
      'metadata',
  AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnum.artifact:
      'artifact',
  AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnum
          .unknownDefaultOpenApi:
      'unknown_default_open_api',
};
