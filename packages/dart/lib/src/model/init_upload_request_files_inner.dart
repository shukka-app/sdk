//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'init_upload_request_files_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InitUploadRequestFilesInner {
  /// Returns a new [InitUploadRequestFilesInner] instance.
  InitUploadRequestFilesInner({

    required  this.filename,

     this.size,
  });

  @JsonKey(
    
    name: r'filename',
    required: true,
    includeIfNull: false,
  )


  final String filename;



          // minimum: 0
          // maximum: 9007199254740991
  @JsonKey(
    
    name: r'size',
    required: false,
    includeIfNull: false,
  )


  final int? size;





    @override
    bool operator ==(Object other) => identical(this, other) || other is InitUploadRequestFilesInner &&
      other.filename == filename &&
      other.size == size;

    @override
    int get hashCode =>
        filename.hashCode +
        size.hashCode;

  factory InitUploadRequestFilesInner.fromJson(Map<String, dynamic> json) => _$InitUploadRequestFilesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$InitUploadRequestFilesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

