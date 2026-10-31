//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_list_channels_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChannelListChannelsInner {
  /// Returns a new [ChannelListChannelsInner] instance.
  ChannelListChannelsInner({

    required  this.id,

    required  this.appId,

    required  this.name,

    required  this.currentVersionId,

    required  this.createdAt,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'appId',
    required: true,
    includeIfNull: false,
  )


  final int appId;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'currentVersionId',
    required: true,
    includeIfNull: true,
  )


  final int? currentVersionId;



  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final int createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ChannelListChannelsInner &&
      other.id == id &&
      other.appId == appId &&
      other.name == name &&
      other.currentVersionId == currentVersionId &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        id.hashCode +
        appId.hashCode +
        name.hashCode +
        (currentVersionId == null ? 0 : currentVersionId.hashCode) +
        createdAt.hashCode;

  factory ChannelListChannelsInner.fromJson(Map<String, dynamic> json) => _$ChannelListChannelsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelListChannelsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

