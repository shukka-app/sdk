//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/app_detail_channels_inner_versions_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_detail_channels_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AppDetailChannelsInner {
  /// Returns a new [AppDetailChannelsInner] instance.
  AppDetailChannelsInner({

    required  this.id,

    required  this.name,

    required  this.currentVersionId,

    required  this.feedUrl,

    required  this.versions,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



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
    
    name: r'feedUrl',
    required: true,
    includeIfNull: false,
  )


  final String feedUrl;



  @JsonKey(
    
    name: r'versions',
    required: true,
    includeIfNull: false,
  )


  final List<AppDetailChannelsInnerVersionsInner> versions;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AppDetailChannelsInner &&
      other.id == id &&
      other.name == name &&
      other.currentVersionId == currentVersionId &&
      other.feedUrl == feedUrl &&
      other.versions == versions;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        (currentVersionId == null ? 0 : currentVersionId.hashCode) +
        feedUrl.hashCode +
        versions.hashCode;

  factory AppDetailChannelsInner.fromJson(Map<String, dynamic> json) => _$AppDetailChannelsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$AppDetailChannelsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

