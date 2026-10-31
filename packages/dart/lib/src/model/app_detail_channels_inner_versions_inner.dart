//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/app_detail_channels_inner_versions_inner_artifacts_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_detail_channels_inner_versions_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AppDetailChannelsInnerVersionsInner {
  /// Returns a new [AppDetailChannelsInnerVersionsInner] instance.
  AppDetailChannelsInnerVersionsInner({

    required  this.id,

    required  this.appId,

    required  this.channelId,

    required  this.version,

    required  this.createdAt,

    required  this.releasedAt,

    required  this.metadataHits,

    required  this.artifactHits,

    required  this.isDraft,

    required  this.isCurrent,

    required  this.artifacts,
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
    
    name: r'channelId',
    required: true,
    includeIfNull: false,
  )


  final int channelId;



  @JsonKey(
    
    name: r'version',
    required: true,
    includeIfNull: false,
  )


  final String version;



  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final int createdAt;



  @JsonKey(
    
    name: r'releasedAt',
    required: true,
    includeIfNull: true,
  )


  final int? releasedAt;



  @JsonKey(
    
    name: r'metadataHits',
    required: true,
    includeIfNull: false,
  )


  final int metadataHits;



  @JsonKey(
    
    name: r'artifactHits',
    required: true,
    includeIfNull: false,
  )


  final int artifactHits;



  @JsonKey(
    
    name: r'isDraft',
    required: true,
    includeIfNull: false,
  )


  final bool isDraft;



  @JsonKey(
    
    name: r'isCurrent',
    required: true,
    includeIfNull: false,
  )


  final bool isCurrent;



  @JsonKey(
    
    name: r'artifacts',
    required: true,
    includeIfNull: false,
  )


  final List<AppDetailChannelsInnerVersionsInnerArtifactsInner> artifacts;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AppDetailChannelsInnerVersionsInner &&
      other.id == id &&
      other.appId == appId &&
      other.channelId == channelId &&
      other.version == version &&
      other.createdAt == createdAt &&
      other.releasedAt == releasedAt &&
      other.metadataHits == metadataHits &&
      other.artifactHits == artifactHits &&
      other.isDraft == isDraft &&
      other.isCurrent == isCurrent &&
      other.artifacts == artifacts;

    @override
    int get hashCode =>
        id.hashCode +
        appId.hashCode +
        channelId.hashCode +
        version.hashCode +
        createdAt.hashCode +
        (releasedAt == null ? 0 : releasedAt.hashCode) +
        metadataHits.hashCode +
        artifactHits.hashCode +
        isDraft.hashCode +
        isCurrent.hashCode +
        artifacts.hashCode;

  factory AppDetailChannelsInnerVersionsInner.fromJson(Map<String, dynamic> json) => _$AppDetailChannelsInnerVersionsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$AppDetailChannelsInnerVersionsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

