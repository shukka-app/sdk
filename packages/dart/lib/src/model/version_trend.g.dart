// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_trend.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VersionTrendCWProxy {
  VersionTrend points(List<ChannelTrendPointsInner> points);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VersionTrend(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VersionTrend(...).copyWith(id: 12, name: "My name")
  /// ````
  VersionTrend call({List<ChannelTrendPointsInner> points});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVersionTrend.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVersionTrend.copyWith.fieldName(...)`
class _$VersionTrendCWProxyImpl implements _$VersionTrendCWProxy {
  const _$VersionTrendCWProxyImpl(this._value);

  final VersionTrend _value;

  @override
  VersionTrend points(List<ChannelTrendPointsInner> points) =>
      this(points: points);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VersionTrend(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VersionTrend(...).copyWith(id: 12, name: "My name")
  /// ````
  VersionTrend call({Object? points = const $CopyWithPlaceholder()}) {
    return VersionTrend(
      points: points == const $CopyWithPlaceholder()
          ? _value.points
          // ignore: cast_nullable_to_non_nullable
          : points as List<ChannelTrendPointsInner>,
    );
  }
}

extension $VersionTrendCopyWith on VersionTrend {
  /// Returns a callable class that can be used as follows: `instanceOfVersionTrend.copyWith(...)` or like so:`instanceOfVersionTrend.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VersionTrendCWProxy get copyWith => _$VersionTrendCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionTrend _$VersionTrendFromJson(Map<String, dynamic> json) =>
    $checkedCreate('VersionTrend', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['points']);
      final val = VersionTrend(
        points: $checkedConvert(
          'points',
          (v) => (v as List<dynamic>)
              .map(
                (e) =>
                    ChannelTrendPointsInner.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$VersionTrendToJson(VersionTrend instance) =>
    <String, dynamic>{
      'points': instance.points.map((e) => e.toJson()).toList(),
    };
