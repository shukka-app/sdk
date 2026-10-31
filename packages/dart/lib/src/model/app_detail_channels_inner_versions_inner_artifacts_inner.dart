//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_detail_channels_inner_versions_inner_artifacts_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AppDetailChannelsInnerVersionsInnerArtifactsInner {
  /// Returns a new [AppDetailChannelsInnerVersionsInnerArtifactsInner] instance.
  AppDetailChannelsInnerVersionsInnerArtifactsInner({

    required  this.id,

    required  this.versionId,

    required  this.filename,

    required  this.s3Key,

    required  this.size,

    required  this.kind,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'versionId',
    required: true,
    includeIfNull: false,
  )


  final int versionId;



  @JsonKey(
    
    name: r'filename',
    required: true,
    includeIfNull: false,
  )


  final String filename;



  @JsonKey(
    
    name: r's3Key',
    required: true,
    includeIfNull: false,
  )


  final String s3Key;



  @JsonKey(
    
    name: r'size',
    required: true,
    includeIfNull: false,
  )


  final int size;



  @JsonKey(
    
    name: r'kind',
    required: true,
    includeIfNull: false,
  unknownEnumValue: AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnum.unknownDefaultOpenApi,
  )


  final AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnum kind;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AppDetailChannelsInnerVersionsInnerArtifactsInner &&
      other.id == id &&
      other.versionId == versionId &&
      other.filename == filename &&
      other.s3Key == s3Key &&
      other.size == size &&
      other.kind == kind;

    @override
    int get hashCode =>
        id.hashCode +
        versionId.hashCode +
        filename.hashCode +
        s3Key.hashCode +
        size.hashCode +
        kind.hashCode;

  factory AppDetailChannelsInnerVersionsInnerArtifactsInner.fromJson(Map<String, dynamic> json) => _$AppDetailChannelsInnerVersionsInnerArtifactsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$AppDetailChannelsInnerVersionsInnerArtifactsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

enum AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnum {
@JsonValue(r'metadata')
metadata(r'metadata'),
@JsonValue(r'artifact')
artifact(r'artifact'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const AppDetailChannelsInnerVersionsInnerArtifactsInnerKindEnum(this.value);

final String value;

@override
String toString() => value;
}


