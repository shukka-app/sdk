// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_release.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChannelReleaseCWProxy {
  ChannelRelease version(String version);

  ChannelRelease releasedAt(int releasedAt);

  ChannelRelease files(List<ChannelReleaseFilesInner> files);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelRelease(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelRelease(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelRelease call({
    String version,
    int releasedAt,
    List<ChannelReleaseFilesInner> files,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChannelRelease.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChannelRelease.copyWith.fieldName(...)`
class _$ChannelReleaseCWProxyImpl implements _$ChannelReleaseCWProxy {
  const _$ChannelReleaseCWProxyImpl(this._value);

  final ChannelRelease _value;

  @override
  ChannelRelease version(String version) => this(version: version);

  @override
  ChannelRelease releasedAt(int releasedAt) => this(releasedAt: releasedAt);

  @override
  ChannelRelease files(List<ChannelReleaseFilesInner> files) =>
      this(files: files);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelRelease(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelRelease(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelRelease call({
    Object? version = const $CopyWithPlaceholder(),
    Object? releasedAt = const $CopyWithPlaceholder(),
    Object? files = const $CopyWithPlaceholder(),
  }) {
    return ChannelRelease(
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as String,
      releasedAt: releasedAt == const $CopyWithPlaceholder()
          ? _value.releasedAt
          // ignore: cast_nullable_to_non_nullable
          : releasedAt as int,
      files: files == const $CopyWithPlaceholder()
          ? _value.files
          // ignore: cast_nullable_to_non_nullable
          : files as List<ChannelReleaseFilesInner>,
    );
  }
}

extension $ChannelReleaseCopyWith on ChannelRelease {
  /// Returns a callable class that can be used as follows: `instanceOfChannelRelease.copyWith(...)` or like so:`instanceOfChannelRelease.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChannelReleaseCWProxy get copyWith => _$ChannelReleaseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelRelease _$ChannelReleaseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ChannelRelease', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['version', 'releasedAt', 'files']);
      final val = ChannelRelease(
        version: $checkedConvert('version', (v) => v as String),
        releasedAt: $checkedConvert('releasedAt', (v) => (v as num).toInt()),
        files: $checkedConvert(
          'files',
          (v) => (v as List<dynamic>)
              .map(
                (e) => ChannelReleaseFilesInner.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ChannelReleaseToJson(ChannelRelease instance) =>
    <String, dynamic>{
      'version': instance.version,
      'releasedAt': instance.releasedAt,
      'files': instance.files.map((e) => e.toJson()).toList(),
    };
