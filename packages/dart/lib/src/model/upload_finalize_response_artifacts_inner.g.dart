// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_finalize_response_artifacts_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UploadFinalizeResponseArtifactsInnerCWProxy {
  UploadFinalizeResponseArtifactsInner filename(String filename);

  UploadFinalizeResponseArtifactsInner size(int size);

  UploadFinalizeResponseArtifactsInner kind(
    UploadFinalizeResponseArtifactsInnerKindEnum kind,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UploadFinalizeResponseArtifactsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UploadFinalizeResponseArtifactsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  UploadFinalizeResponseArtifactsInner call({
    String filename,
    int size,
    UploadFinalizeResponseArtifactsInnerKindEnum kind,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUploadFinalizeResponseArtifactsInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUploadFinalizeResponseArtifactsInner.copyWith.fieldName(...)`
class _$UploadFinalizeResponseArtifactsInnerCWProxyImpl
    implements _$UploadFinalizeResponseArtifactsInnerCWProxy {
  const _$UploadFinalizeResponseArtifactsInnerCWProxyImpl(this._value);

  final UploadFinalizeResponseArtifactsInner _value;

  @override
  UploadFinalizeResponseArtifactsInner filename(String filename) =>
      this(filename: filename);

  @override
  UploadFinalizeResponseArtifactsInner size(int size) => this(size: size);

  @override
  UploadFinalizeResponseArtifactsInner kind(
    UploadFinalizeResponseArtifactsInnerKindEnum kind,
  ) => this(kind: kind);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UploadFinalizeResponseArtifactsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UploadFinalizeResponseArtifactsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  UploadFinalizeResponseArtifactsInner call({
    Object? filename = const $CopyWithPlaceholder(),
    Object? size = const $CopyWithPlaceholder(),
    Object? kind = const $CopyWithPlaceholder(),
  }) {
    return UploadFinalizeResponseArtifactsInner(
      filename: filename == const $CopyWithPlaceholder()
          ? _value.filename
          // ignore: cast_nullable_to_non_nullable
          : filename as String,
      size: size == const $CopyWithPlaceholder()
          ? _value.size
          // ignore: cast_nullable_to_non_nullable
          : size as int,
      kind: kind == const $CopyWithPlaceholder()
          ? _value.kind
          // ignore: cast_nullable_to_non_nullable
          : kind as UploadFinalizeResponseArtifactsInnerKindEnum,
    );
  }
}

extension $UploadFinalizeResponseArtifactsInnerCopyWith
    on UploadFinalizeResponseArtifactsInner {
  /// Returns a callable class that can be used as follows: `instanceOfUploadFinalizeResponseArtifactsInner.copyWith(...)` or like so:`instanceOfUploadFinalizeResponseArtifactsInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UploadFinalizeResponseArtifactsInnerCWProxy get copyWith =>
      _$UploadFinalizeResponseArtifactsInnerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadFinalizeResponseArtifactsInner
_$UploadFinalizeResponseArtifactsInnerFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UploadFinalizeResponseArtifactsInner', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['filename', 'size', 'kind']);
      final val = UploadFinalizeResponseArtifactsInner(
        filename: $checkedConvert('filename', (v) => v as String),
        size: $checkedConvert('size', (v) => (v as num).toInt()),
        kind: $checkedConvert(
          'kind',
          (v) => $enumDecode(
            _$UploadFinalizeResponseArtifactsInnerKindEnumEnumMap,
            v,
            unknownValue: UploadFinalizeResponseArtifactsInnerKindEnum
                .unknownDefaultOpenApi,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UploadFinalizeResponseArtifactsInnerToJson(
  UploadFinalizeResponseArtifactsInner instance,
) => <String, dynamic>{
  'filename': instance.filename,
  'size': instance.size,
  'kind': _$UploadFinalizeResponseArtifactsInnerKindEnumEnumMap[instance.kind]!,
};

const _$UploadFinalizeResponseArtifactsInnerKindEnumEnumMap = {
  UploadFinalizeResponseArtifactsInnerKindEnum.metadata: 'metadata',
  UploadFinalizeResponseArtifactsInnerKindEnum.artifact: 'artifact',
  UploadFinalizeResponseArtifactsInnerKindEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
