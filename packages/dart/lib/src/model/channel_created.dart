//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/channel_list_channels_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_created.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChannelCreated {
  /// Returns a new [ChannelCreated] instance.
  ChannelCreated({

    required  this.channel,
  });

  @JsonKey(
    
    name: r'channel',
    required: true,
    includeIfNull: false,
  )


  final ChannelListChannelsInner channel;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ChannelCreated &&
      other.channel == channel;

    @override
    int get hashCode =>
        channel.hashCode;

  factory ChannelCreated.fromJson(Map<String, dynamic> json) => _$ChannelCreatedFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelCreatedToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

