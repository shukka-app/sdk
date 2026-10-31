//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/upload_init_response_files_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upload_init_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UploadInitResponse {
  /// Returns a new [UploadInitResponse] instance.
  UploadInitResponse({

    required  this.uploadId,

    required  this.expiresAt,

    required  this.files,
  });

  @JsonKey(
    
    name: r'uploadId',
    required: true,
    includeIfNull: false,
  )


  final String uploadId;



  @JsonKey(
    
    name: r'expiresAt',
    required: true,
    includeIfNull: false,
  )


  final int expiresAt;



  @JsonKey(
    
    name: r'files',
    required: true,
    includeIfNull: false,
  )


  final List<UploadInitResponseFilesInner> files;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UploadInitResponse &&
      other.uploadId == uploadId &&
      other.expiresAt == expiresAt &&
      other.files == files;

    @override
    int get hashCode =>
        uploadId.hashCode +
        expiresAt.hashCode +
        files.hashCode;

  factory UploadInitResponse.fromJson(Map<String, dynamic> json) => _$UploadInitResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UploadInitResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

