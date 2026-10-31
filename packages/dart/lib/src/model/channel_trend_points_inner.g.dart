// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_trend_points_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChannelTrendPointsInnerCWProxy {
  ChannelTrendPointsInner t(int t);

  ChannelTrendPointsInner metadata(int metadata);

  ChannelTrendPointsInner artifact(int artifact);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelTrendPointsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelTrendPointsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelTrendPointsInner call({int t, int metadata, int artifact});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChannelTrendPointsInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChannelTrendPointsInner.copyWith.fieldName(...)`
class _$ChannelTrendPointsInnerCWProxyImpl
    implements _$ChannelTrendPointsInnerCWProxy {
  const _$ChannelTrendPointsInnerCWProxyImpl(this._value);

  final ChannelTrendPointsInner _value;

  @override
  ChannelTrendPointsInner t(int t) => this(t: t);

  @override
  ChannelTrendPointsInner metadata(int metadata) => this(metadata: metadata);

  @override
  ChannelTrendPointsInner artifact(int artifact) => this(artifact: artifact);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelTrendPointsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelTrendPointsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelTrendPointsInner call({
    Object? t = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
    Object? artifact = const $CopyWithPlaceholder(),
  }) {
    return ChannelTrendPointsInner(
      t: t == const $CopyWithPlaceholder()
          ? _value.t
          // ignore: cast_nullable_to_non_nullable
          : t as int,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as int,
      artifact: artifact == const $CopyWithPlaceholder()
          ? _value.artifact
          // ignore: cast_nullable_to_non_nullable
          : artifact as int,
    );
  }
}

extension $ChannelTrendPointsInnerCopyWith on ChannelTrendPointsInner {
  /// Returns a callable class that can be used as follows: `instanceOfChannelTrendPointsInner.copyWith(...)` or like so:`instanceOfChannelTrendPointsInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChannelTrendPointsInnerCWProxy get copyWith =>
      _$ChannelTrendPointsInnerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelTrendPointsInner _$ChannelTrendPointsInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ChannelTrendPointsInner', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['t', 'metadata', 'artifact']);
  final val = ChannelTrendPointsInner(
    t: $checkedConvert('t', (v) => (v as num).toInt()),
    metadata: $checkedConvert('metadata', (v) => (v as num).toInt()),
    artifact: $checkedConvert('artifact', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$ChannelTrendPointsInnerToJson(
  ChannelTrendPointsInner instance,
) => <String, dynamic>{
  't': instance.t,
  'metadata': instance.metadata,
  'artifact': instance.artifact,
};
