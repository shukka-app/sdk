// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_finalize_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UploadFinalizeResponseCWProxy {
  UploadFinalizeResponse versionId(int versionId);

  UploadFinalizeResponse version(String version);

  UploadFinalizeResponse channel(String channel);

  UploadFinalizeResponse artifacts(
    List<UploadFinalizeResponseArtifactsInner> artifacts,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UploadFinalizeResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UploadFinalizeResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UploadFinalizeResponse call({
    int versionId,
    String version,
    String channel,
    List<UploadFinalizeResponseArtifactsInner> artifacts,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUploadFinalizeResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUploadFinalizeResponse.copyWith.fieldName(...)`
class _$UploadFinalizeResponseCWProxyImpl
    implements _$UploadFinalizeResponseCWProxy {
  const _$UploadFinalizeResponseCWProxyImpl(this._value);

  final UploadFinalizeResponse _value;

  @override
  UploadFinalizeResponse versionId(int versionId) => this(versionId: versionId);

  @override
  UploadFinalizeResponse version(String version) => this(version: version);

  @override
  UploadFinalizeResponse channel(String channel) => this(channel: channel);

  @override
  UploadFinalizeResponse artifacts(
    List<UploadFinalizeResponseArtifactsInner> artifacts,
  ) => this(artifacts: artifacts);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UploadFinalizeResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UploadFinalizeResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UploadFinalizeResponse call({
    Object? versionId = const $CopyWithPlaceholder(),
    Object? version = const $CopyWithPlaceholder(),
    Object? channel = const $CopyWithPlaceholder(),
    Object? artifacts = const $CopyWithPlaceholder(),
  }) {
    return UploadFinalizeResponse(
      versionId: versionId == const $CopyWithPlaceholder()
          ? _value.versionId
          // ignore: cast_nullable_to_non_nullable
          : versionId as int,
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as String,
      channel: channel == const $CopyWithPlaceholder()
          ? _value.channel
          // ignore: cast_nullable_to_non_nullable
          : channel as String,
      artifacts: artifacts == const $CopyWithPlaceholder()
          ? _value.artifacts
          // ignore: cast_nullable_to_non_nullable
          : artifacts as List<UploadFinalizeResponseArtifactsInner>,
    );
  }
}

extension $UploadFinalizeResponseCopyWith on UploadFinalizeResponse {
  /// Returns a callable class that can be used as follows: `instanceOfUploadFinalizeResponse.copyWith(...)` or like so:`instanceOfUploadFinalizeResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UploadFinalizeResponseCWProxy get copyWith =>
      _$UploadFinalizeResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadFinalizeResponse _$UploadFinalizeResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UploadFinalizeResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['versionId', 'version', 'channel', 'artifacts'],
  );
  final val = UploadFinalizeResponse(
    versionId: $checkedConvert('versionId', (v) => (v as num).toInt()),
    version: $checkedConvert('version', (v) => v as String),
    channel: $checkedConvert('channel', (v) => v as String),
    artifacts: $checkedConvert(
      'artifacts',
      (v) => (v as List<dynamic>)
          .map(
            (e) => UploadFinalizeResponseArtifactsInner.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$UploadFinalizeResponseToJson(
  UploadFinalizeResponse instance,
) => <String, dynamic>{
  'versionId': instance.versionId,
  'version': instance.version,
  'channel': instance.channel,
  'artifacts': instance.artifacts.map((e) => e.toJson()).toList(),
};
