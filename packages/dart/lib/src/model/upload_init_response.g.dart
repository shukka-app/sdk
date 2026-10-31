// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_init_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UploadInitResponseCWProxy {
  UploadInitResponse uploadId(String uploadId);

  UploadInitResponse expiresAt(int expiresAt);

  UploadInitResponse files(List<UploadInitResponseFilesInner> files);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UploadInitResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UploadInitResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UploadInitResponse call({
    String uploadId,
    int expiresAt,
    List<UploadInitResponseFilesInner> files,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUploadInitResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUploadInitResponse.copyWith.fieldName(...)`
class _$UploadInitResponseCWProxyImpl implements _$UploadInitResponseCWProxy {
  const _$UploadInitResponseCWProxyImpl(this._value);

  final UploadInitResponse _value;

  @override
  UploadInitResponse uploadId(String uploadId) => this(uploadId: uploadId);

  @override
  UploadInitResponse expiresAt(int expiresAt) => this(expiresAt: expiresAt);

  @override
  UploadInitResponse files(List<UploadInitResponseFilesInner> files) =>
      this(files: files);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UploadInitResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UploadInitResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UploadInitResponse call({
    Object? uploadId = const $CopyWithPlaceholder(),
    Object? expiresAt = const $CopyWithPlaceholder(),
    Object? files = const $CopyWithPlaceholder(),
  }) {
    return UploadInitResponse(
      uploadId: uploadId == const $CopyWithPlaceholder()
          ? _value.uploadId
          // ignore: cast_nullable_to_non_nullable
          : uploadId as String,
      expiresAt: expiresAt == const $CopyWithPlaceholder()
          ? _value.expiresAt
          // ignore: cast_nullable_to_non_nullable
          : expiresAt as int,
      files: files == const $CopyWithPlaceholder()
          ? _value.files
          // ignore: cast_nullable_to_non_nullable
          : files as List<UploadInitResponseFilesInner>,
    );
  }
}

extension $UploadInitResponseCopyWith on UploadInitResponse {
  /// Returns a callable class that can be used as follows: `instanceOfUploadInitResponse.copyWith(...)` or like so:`instanceOfUploadInitResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UploadInitResponseCWProxy get copyWith =>
      _$UploadInitResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadInitResponse _$UploadInitResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UploadInitResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['uploadId', 'expiresAt', 'files']);
      final val = UploadInitResponse(
        uploadId: $checkedConvert('uploadId', (v) => v as String),
        expiresAt: $checkedConvert('expiresAt', (v) => (v as num).toInt()),
        files: $checkedConvert(
          'files',
          (v) => (v as List<dynamic>)
              .map(
                (e) => UploadInitResponseFilesInner.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UploadInitResponseToJson(UploadInitResponse instance) =>
    <String, dynamic>{
      'uploadId': instance.uploadId,
      'expiresAt': instance.expiresAt,
      'files': instance.files.map((e) => e.toJson()).toList(),
    };
