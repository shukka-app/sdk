//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/channel_trend_points_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'version_trend.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VersionTrend {
  /// Returns a new [VersionTrend] instance.
  VersionTrend({

    required  this.points,
  });

  @JsonKey(
    
    name: r'points',
    required: true,
    includeIfNull: false,
  )


  final List<ChannelTrendPointsInner> points;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VersionTrend &&
      other.points == points;

    @override
    int get hashCode =>
        points.hashCode;

  factory VersionTrend.fromJson(Map<String, dynamic> json) => _$VersionTrendFromJson(json);

  Map<String, dynamic> toJson() => _$VersionTrendToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

