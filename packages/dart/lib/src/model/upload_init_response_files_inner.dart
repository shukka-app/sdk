//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upload_init_response_files_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UploadInitResponseFilesInner {
  /// Returns a new [UploadInitResponseFilesInner] instance.
  UploadInitResponseFilesInner({

    required  this.filename,

    required  this.key,

    required  this.uploadUrl,
  });

  @JsonKey(
    
    name: r'filename',
    required: true,
    includeIfNull: false,
  )


  final String filename;



  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false,
  )


  final String key;



  @JsonKey(
    
    name: r'uploadUrl',
    required: true,
    includeIfNull: false,
  )


  final String uploadUrl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UploadInitResponseFilesInner &&
      other.filename == filename &&
      other.key == key &&
      other.uploadUrl == uploadUrl;

    @override
    int get hashCode =>
        filename.hashCode +
        key.hashCode +
        uploadUrl.hashCode;

  factory UploadInitResponseFilesInner.fromJson(Map<String, dynamic> json) => _$UploadInitResponseFilesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$UploadInitResponseFilesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

