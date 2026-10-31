// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_metadata.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReleaseMetadataCWProxy {
  ReleaseMetadata metadata(Map<String, Object> metadata);

  ReleaseMetadata version(String version);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReleaseMetadata(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReleaseMetadata(...).copyWith(id: 12, name: "My name")
  /// ````
  ReleaseMetadata call({Map<String, Object> metadata, String version});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReleaseMetadata.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReleaseMetadata.copyWith.fieldName(...)`
class _$ReleaseMetadataCWProxyImpl implements _$ReleaseMetadataCWProxy {
  const _$ReleaseMetadataCWProxyImpl(this._value);

  final ReleaseMetadata _value;

  @override
  ReleaseMetadata metadata(Map<String, Object> metadata) =>
      this(metadata: metadata);

  @override
  ReleaseMetadata version(String version) => this(version: version);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReleaseMetadata(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReleaseMetadata(...).copyWith(id: 12, name: "My name")
  /// ````
  ReleaseMetadata call({
    Object? metadata = const $CopyWithPlaceholder(),
    Object? version = const $CopyWithPlaceholder(),
  }) {
    return ReleaseMetadata(
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Map<String, Object>,
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as String,
    );
  }
}

extension $ReleaseMetadataCopyWith on ReleaseMetadata {
  /// Returns a callable class that can be used as follows: `instanceOfReleaseMetadata.copyWith(...)` or like so:`instanceOfReleaseMetadata.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReleaseMetadataCWProxy get copyWith => _$ReleaseMetadataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReleaseMetadata _$ReleaseMetadataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ReleaseMetadata', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['metadata', 'version']);
      final val = ReleaseMetadata(
        metadata: $checkedConvert(
          'metadata',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, e as Object),
          ),
        ),
        version: $checkedConvert('version', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ReleaseMetadataToJson(ReleaseMetadata instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'version': instance.version,
    };
