//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/channel_list_channels_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChannelList {
  /// Returns a new [ChannelList] instance.
  ChannelList({

    required  this.channels,
  });

  @JsonKey(
    
    name: r'channels',
    required: true,
    includeIfNull: false,
  )


  final List<ChannelListChannelsInner> channels;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ChannelList &&
      other.channels == channels;

    @override
    int get hashCode =>
        channels.hashCode;

  factory ChannelList.fromJson(Map<String, dynamic> json) => _$ChannelListFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

