// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finalize_upload_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FinalizeUploadRequestCWProxy {
  FinalizeUploadRequest uploadId(String uploadId);

  FinalizeUploadRequest app(String? app);

  FinalizeUploadRequest release(bool? release);

  FinalizeUploadRequest metadata(Map<String, Object>? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FinalizeUploadRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FinalizeUploadRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  FinalizeUploadRequest call({
    String uploadId,
    String? app,
    bool? release,
    Map<String, Object>? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFinalizeUploadRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFinalizeUploadRequest.copyWith.fieldName(...)`
class _$FinalizeUploadRequestCWProxyImpl
    implements _$FinalizeUploadRequestCWProxy {
  const _$FinalizeUploadRequestCWProxyImpl(this._value);

  final FinalizeUploadRequest _value;

  @override
  FinalizeUploadRequest uploadId(String uploadId) => this(uploadId: uploadId);

  @override
  FinalizeUploadRequest app(String? app) => this(app: app);

  @override
  FinalizeUploadRequest release(bool? release) => this(release: release);

  @override
  FinalizeUploadRequest metadata(Map<String, Object>? metadata) =>
      this(metadata: metadata);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FinalizeUploadRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FinalizeUploadRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  FinalizeUploadRequest call({
    Object? uploadId = const $CopyWithPlaceholder(),
    Object? app = const $CopyWithPlaceholder(),
    Object? release = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return FinalizeUploadRequest(
      uploadId: uploadId == const $CopyWithPlaceholder()
          ? _value.uploadId
          // ignore: cast_nullable_to_non_nullable
          : uploadId as String,
      app: app == const $CopyWithPlaceholder()
          ? _value.app
          // ignore: cast_nullable_to_non_nullable
          : app as String?,
      release: release == const $CopyWithPlaceholder()
          ? _value.release
          // ignore: cast_nullable_to_non_nullable
          : release as bool?,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Map<String, Object>?,
    );
  }
}

extension $FinalizeUploadRequestCopyWith on FinalizeUploadRequest {
  /// Returns a callable class that can be used as follows: `instanceOfFinalizeUploadRequest.copyWith(...)` or like so:`instanceOfFinalizeUploadRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FinalizeUploadRequestCWProxy get copyWith =>
      _$FinalizeUploadRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FinalizeUploadRequest _$FinalizeUploadRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('FinalizeUploadRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['uploadId']);
  final val = FinalizeUploadRequest(
    uploadId: $checkedConvert('uploadId', (v) => v as String),
    app: $checkedConvert('app', (v) => v as String?),
    release: $checkedConvert('release', (v) => v as bool?),
    metadata: $checkedConvert(
      'metadata',
      (v) =>
          (v as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as Object)),
    ),
  );
  return val;
});

Map<String, dynamic> _$FinalizeUploadRequestToJson(
  FinalizeUploadRequest instance,
) => <String, dynamic>{
  'uploadId': instance.uploadId,
  'app': ?instance.app,
  'release': ?instance.release,
  'metadata': ?instance.metadata,
};
