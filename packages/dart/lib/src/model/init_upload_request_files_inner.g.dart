// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_upload_request_files_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InitUploadRequestFilesInnerCWProxy {
  InitUploadRequestFilesInner filename(String filename);

  InitUploadRequestFilesInner size(int? size);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `InitUploadRequestFilesInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// InitUploadRequestFilesInner(...).copyWith(id: 12, name: "My name")
  /// ````
  InitUploadRequestFilesInner call({String filename, int? size});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfInitUploadRequestFilesInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfInitUploadRequestFilesInner.copyWith.fieldName(...)`
class _$InitUploadRequestFilesInnerCWProxyImpl
    implements _$InitUploadRequestFilesInnerCWProxy {
  const _$InitUploadRequestFilesInnerCWProxyImpl(this._value);

  final InitUploadRequestFilesInner _value;

  @override
  InitUploadRequestFilesInner filename(String filename) =>
      this(filename: filename);

  @override
  InitUploadRequestFilesInner size(int? size) => this(size: size);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `InitUploadRequestFilesInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// InitUploadRequestFilesInner(...).copyWith(id: 12, name: "My name")
  /// ````
  InitUploadRequestFilesInner call({
    Object? filename = const $CopyWithPlaceholder(),
    Object? size = const $CopyWithPlaceholder(),
  }) {
    return InitUploadRequestFilesInner(
      filename: filename == const $CopyWithPlaceholder()
          ? _value.filename
          // ignore: cast_nullable_to_non_nullable
          : filename as String,
      size: size == const $CopyWithPlaceholder()
          ? _value.size
          // ignore: cast_nullable_to_non_nullable
          : size as int?,
    );
  }
}

extension $InitUploadRequestFilesInnerCopyWith on InitUploadRequestFilesInner {
  /// Returns a callable class that can be used as follows: `instanceOfInitUploadRequestFilesInner.copyWith(...)` or like so:`instanceOfInitUploadRequestFilesInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InitUploadRequestFilesInnerCWProxy get copyWith =>
      _$InitUploadRequestFilesInnerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitUploadRequestFilesInner _$InitUploadRequestFilesInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InitUploadRequestFilesInner', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['filename']);
  final val = InitUploadRequestFilesInner(
    filename: $checkedConvert('filename', (v) => v as String),
    size: $checkedConvert('size', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$InitUploadRequestFilesInnerToJson(
  InitUploadRequestFilesInner instance,
) => <String, dynamic>{'filename': instance.filename, 'size': ?instance.size};
