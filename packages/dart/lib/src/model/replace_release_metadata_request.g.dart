// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_release_metadata_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReplaceReleaseMetadataRequestCWProxy {
  ReplaceReleaseMetadataRequest metadata(Map<String, Object> metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReplaceReleaseMetadataRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReplaceReleaseMetadataRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ReplaceReleaseMetadataRequest call({Map<String, Object> metadata});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReplaceReleaseMetadataRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReplaceReleaseMetadataRequest.copyWith.fieldName(...)`
class _$ReplaceReleaseMetadataRequestCWProxyImpl
    implements _$ReplaceReleaseMetadataRequestCWProxy {
  const _$ReplaceReleaseMetadataRequestCWProxyImpl(this._value);

  final ReplaceReleaseMetadataRequest _value;

  @override
  ReplaceReleaseMetadataRequest metadata(Map<String, Object> metadata) =>
      this(metadata: metadata);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReplaceReleaseMetadataRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReplaceReleaseMetadataRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ReplaceReleaseMetadataRequest call({
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return ReplaceReleaseMetadataRequest(
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Map<String, Object>,
    );
  }
}

extension $ReplaceReleaseMetadataRequestCopyWith
    on ReplaceReleaseMetadataRequest {
  /// Returns a callable class that can be used as follows: `instanceOfReplaceReleaseMetadataRequest.copyWith(...)` or like so:`instanceOfReplaceReleaseMetadataRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReplaceReleaseMetadataRequestCWProxy get copyWith =>
      _$ReplaceReleaseMetadataRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReplaceReleaseMetadataRequest _$ReplaceReleaseMetadataRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ReplaceReleaseMetadataRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['metadata']);
  final val = ReplaceReleaseMetadataRequest(
    metadata: $checkedConvert(
      'metadata',
      (v) =>
          (v as Map<String, dynamic>).map((k, e) => MapEntry(k, e as Object)),
    ),
  );
  return val;
});

Map<String, dynamic> _$ReplaceReleaseMetadataRequestToJson(
  ReplaceReleaseMetadataRequest instance,
) => <String, dynamic>{'metadata': instance.metadata};
