//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/upload_finalize_response_artifacts_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upload_finalize_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UploadFinalizeResponse {
  /// Returns a new [UploadFinalizeResponse] instance.
  UploadFinalizeResponse({

    required  this.versionId,

    required  this.version,

    required  this.channel,

    required  this.artifacts,
  });

  @JsonKey(
    
    name: r'versionId',
    required: true,
    includeIfNull: false,
  )


  final int versionId;



  @JsonKey(
    
    name: r'version',
    required: true,
    includeIfNull: false,
  )


  final String version;



  @JsonKey(
    
    name: r'channel',
    required: true,
    includeIfNull: false,
  )


  final String channel;



  @JsonKey(
    
    name: r'artifacts',
    required: true,
    includeIfNull: false,
  )


  final List<UploadFinalizeResponseArtifactsInner> artifacts;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UploadFinalizeResponse &&
      other.versionId == versionId &&
      other.version == version &&
      other.channel == channel &&
      other.artifacts == artifacts;

    @override
    int get hashCode =>
        versionId.hashCode +
        version.hashCode +
        channel.hashCode +
        artifacts.hashCode;

  factory UploadFinalizeResponse.fromJson(Map<String, dynamic> json) => _$UploadFinalizeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UploadFinalizeResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

