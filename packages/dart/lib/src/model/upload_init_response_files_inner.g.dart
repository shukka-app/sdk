// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_init_response_files_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UploadInitResponseFilesInnerCWProxy {
  UploadInitResponseFilesInner filename(String filename);

  UploadInitResponseFilesInner key(String key);

  UploadInitResponseFilesInner uploadUrl(String uploadUrl);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UploadInitResponseFilesInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UploadInitResponseFilesInner(...).copyWith(id: 12, name: "My name")
  /// ````
  UploadInitResponseFilesInner call({
    String filename,
    String key,
    String uploadUrl,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUploadInitResponseFilesInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUploadInitResponseFilesInner.copyWith.fieldName(...)`
class _$UploadInitResponseFilesInnerCWProxyImpl
    implements _$UploadInitResponseFilesInnerCWProxy {
  const _$UploadInitResponseFilesInnerCWProxyImpl(this._value);

  final UploadInitResponseFilesInner _value;

  @override
  UploadInitResponseFilesInner filename(String filename) =>
      this(filename: filename);

  @override
  UploadInitResponseFilesInner key(String key) => this(key: key);

  @override
  UploadInitResponseFilesInner uploadUrl(String uploadUrl) =>
      this(uploadUrl: uploadUrl);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UploadInitResponseFilesInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UploadInitResponseFilesInner(...).copyWith(id: 12, name: "My name")
  /// ````
  UploadInitResponseFilesInner call({
    Object? filename = const $CopyWithPlaceholder(),
    Object? key = const $CopyWithPlaceholder(),
    Object? uploadUrl = const $CopyWithPlaceholder(),
  }) {
    return UploadInitResponseFilesInner(
      filename: filename == const $CopyWithPlaceholder()
          ? _value.filename
          // ignore: cast_nullable_to_non_nullable
          : filename as String,
      key: key == const $CopyWithPlaceholder()
          ? _value.key
          // ignore: cast_nullable_to_non_nullable
          : key as String,
      uploadUrl: uploadUrl == const $CopyWithPlaceholder()
          ? _value.uploadUrl
          // ignore: cast_nullable_to_non_nullable
          : uploadUrl as String,
    );
  }
}

extension $UploadInitResponseFilesInnerCopyWith
    on UploadInitResponseFilesInner {
  /// Returns a callable class that can be used as follows: `instanceOfUploadInitResponseFilesInner.copyWith(...)` or like so:`instanceOfUploadInitResponseFilesInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UploadInitResponseFilesInnerCWProxy get copyWith =>
      _$UploadInitResponseFilesInnerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadInitResponseFilesInner _$UploadInitResponseFilesInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UploadInitResponseFilesInner', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['filename', 'key', 'uploadUrl']);
  final val = UploadInitResponseFilesInner(
    filename: $checkedConvert('filename', (v) => v as String),
    key: $checkedConvert('key', (v) => v as String),
    uploadUrl: $checkedConvert('uploadUrl', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$UploadInitResponseFilesInnerToJson(
  UploadInitResponseFilesInner instance,
) => <String, dynamic>{
  'filename': instance.filename,
  'key': instance.key,
  'uploadUrl': instance.uploadUrl,
};
