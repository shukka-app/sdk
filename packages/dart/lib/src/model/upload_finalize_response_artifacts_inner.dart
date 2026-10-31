//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upload_finalize_response_artifacts_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UploadFinalizeResponseArtifactsInner {
  /// Returns a new [UploadFinalizeResponseArtifactsInner] instance.
  UploadFinalizeResponseArtifactsInner({

    required  this.filename,

    required  this.size,

    required  this.kind,
  });

  @JsonKey(
    
    name: r'filename',
    required: true,
    includeIfNull: false,
  )


  final String filename;



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
  unknownEnumValue: UploadFinalizeResponseArtifactsInnerKindEnum.unknownDefaultOpenApi,
  )


  final UploadFinalizeResponseArtifactsInnerKindEnum kind;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UploadFinalizeResponseArtifactsInner &&
      other.filename == filename &&
      other.size == size &&
      other.kind == kind;

    @override
    int get hashCode =>
        filename.hashCode +
        size.hashCode +
        kind.hashCode;

  factory UploadFinalizeResponseArtifactsInner.fromJson(Map<String, dynamic> json) => _$UploadFinalizeResponseArtifactsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$UploadFinalizeResponseArtifactsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

enum UploadFinalizeResponseArtifactsInnerKindEnum {
@JsonValue(r'metadata')
metadata(r'metadata'),
@JsonValue(r'artifact')
artifact(r'artifact'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const UploadFinalizeResponseArtifactsInnerKindEnum(this.value);

final String value;

@override
String toString() => value;
}


