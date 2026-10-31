//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_trend_points_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChannelTrendPointsInner {
  /// Returns a new [ChannelTrendPointsInner] instance.
  ChannelTrendPointsInner({

    required  this.t,

    required  this.metadata,

    required  this.artifact,
  });

  @JsonKey(
    
    name: r't',
    required: true,
    includeIfNull: false,
  )


  final int t;



  @JsonKey(
    
    name: r'metadata',
    required: true,
    includeIfNull: false,
  )


  final int metadata;



  @JsonKey(
    
    name: r'artifact',
    required: true,
    includeIfNull: false,
  )


  final int artifact;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ChannelTrendPointsInner &&
      other.t == t &&
      other.metadata == metadata &&
      other.artifact == artifact;

    @override
    int get hashCode =>
        t.hashCode +
        metadata.hashCode +
        artifact.hashCode;

  factory ChannelTrendPointsInner.fromJson(Map<String, dynamic> json) => _$ChannelTrendPointsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelTrendPointsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

