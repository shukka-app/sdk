//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/channel_trend_points_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_trend.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChannelTrend {
  /// Returns a new [ChannelTrend] instance.
  ChannelTrend({

    required  this.granularity,

    required  this.points,
  });

  @JsonKey(
    
    name: r'granularity',
    required: true,
    includeIfNull: false,
  unknownEnumValue: ChannelTrendGranularityEnum.unknownDefaultOpenApi,
  )


  final ChannelTrendGranularityEnum granularity;



  @JsonKey(
    
    name: r'points',
    required: true,
    includeIfNull: false,
  )


  final List<ChannelTrendPointsInner> points;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ChannelTrend &&
      other.granularity == granularity &&
      other.points == points;

    @override
    int get hashCode =>
        granularity.hashCode +
        points.hashCode;

  factory ChannelTrend.fromJson(Map<String, dynamic> json) => _$ChannelTrendFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelTrendToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

enum ChannelTrendGranularityEnum {
@JsonValue(r'hour')
hour(r'hour'),
@JsonValue(r'day')
day(r'day'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ChannelTrendGranularityEnum(this.value);

final String value;

@override
String toString() => value;
}


