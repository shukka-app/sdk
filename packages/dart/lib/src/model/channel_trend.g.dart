// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_trend.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChannelTrendCWProxy {
  ChannelTrend granularity(ChannelTrendGranularityEnum granularity);

  ChannelTrend points(List<ChannelTrendPointsInner> points);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelTrend(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelTrend(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelTrend call({
    ChannelTrendGranularityEnum granularity,
    List<ChannelTrendPointsInner> points,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChannelTrend.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChannelTrend.copyWith.fieldName(...)`
class _$ChannelTrendCWProxyImpl implements _$ChannelTrendCWProxy {
  const _$ChannelTrendCWProxyImpl(this._value);

  final ChannelTrend _value;

  @override
  ChannelTrend granularity(ChannelTrendGranularityEnum granularity) =>
      this(granularity: granularity);

  @override
  ChannelTrend points(List<ChannelTrendPointsInner> points) =>
      this(points: points);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelTrend(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelTrend(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelTrend call({
    Object? granularity = const $CopyWithPlaceholder(),
    Object? points = const $CopyWithPlaceholder(),
  }) {
    return ChannelTrend(
      granularity: granularity == const $CopyWithPlaceholder()
          ? _value.granularity
          // ignore: cast_nullable_to_non_nullable
          : granularity as ChannelTrendGranularityEnum,
      points: points == const $CopyWithPlaceholder()
          ? _value.points
          // ignore: cast_nullable_to_non_nullable
          : points as List<ChannelTrendPointsInner>,
    );
  }
}

extension $ChannelTrendCopyWith on ChannelTrend {
  /// Returns a callable class that can be used as follows: `instanceOfChannelTrend.copyWith(...)` or like so:`instanceOfChannelTrend.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChannelTrendCWProxy get copyWith => _$ChannelTrendCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelTrend _$ChannelTrendFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ChannelTrend', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['granularity', 'points']);
      final val = ChannelTrend(
        granularity: $checkedConvert(
          'granularity',
          (v) => $enumDecode(
            _$ChannelTrendGranularityEnumEnumMap,
            v,
            unknownValue: ChannelTrendGranularityEnum.unknownDefaultOpenApi,
          ),
        ),
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

Map<String, dynamic> _$ChannelTrendToJson(
  ChannelTrend instance,
) => <String, dynamic>{
  'granularity': _$ChannelTrendGranularityEnumEnumMap[instance.granularity]!,
  'points': instance.points.map((e) => e.toJson()).toList(),
};

const _$ChannelTrendGranularityEnumEnumMap = {
  ChannelTrendGranularityEnum.hour: 'hour',
  ChannelTrendGranularityEnum.day: 'day',
  ChannelTrendGranularityEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};
