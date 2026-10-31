//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'finalize_upload_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class FinalizeUploadRequest {
  /// Returns a new [FinalizeUploadRequest] instance.
  FinalizeUploadRequest({

    required  this.uploadId,

     this.app,

     this.release,

     this.metadata,
  });

  @JsonKey(
    
    name: r'uploadId',
    required: true,
    includeIfNull: false,
  )


  final String uploadId;



  @JsonKey(
    
    name: r'app',
    required: false,
    includeIfNull: false,
  )


  final String? app;



  @JsonKey(
    
    name: r'release',
    required: false,
    includeIfNull: false,
  )


  final bool? release;



      /// Custom JSON object; at most 16 KiB of compact UTF-8 JSON. Public after release.
  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false,
  )


  final Map<String, Object>? metadata;





    @override
    bool operator ==(Object other) => identical(this, other) || other is FinalizeUploadRequest &&
      other.uploadId == uploadId &&
      other.app == app &&
      other.release == release &&
      other.metadata == metadata;

    @override
    int get hashCode =>
        uploadId.hashCode +
        app.hashCode +
        release.hashCode +
        metadata.hashCode;

  factory FinalizeUploadRequest.fromJson(Map<String, dynamic> json) => _$FinalizeUploadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FinalizeUploadRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

