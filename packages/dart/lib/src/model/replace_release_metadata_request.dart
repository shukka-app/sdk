//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'replace_release_metadata_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReplaceReleaseMetadataRequest {
  /// Returns a new [ReplaceReleaseMetadataRequest] instance.
  ReplaceReleaseMetadataRequest({

    required  this.metadata,
  });

      /// Custom JSON object; at most 16 KiB of compact UTF-8 JSON. Public after release.
  @JsonKey(
    
    name: r'metadata',
    required: true,
    includeIfNull: false,
  )


  final Map<String, Object> metadata;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ReplaceReleaseMetadataRequest &&
      other.metadata == metadata;

    @override
    int get hashCode =>
        metadata.hashCode;

  factory ReplaceReleaseMetadataRequest.fromJson(Map<String, dynamic> json) => _$ReplaceReleaseMetadataRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReplaceReleaseMetadataRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

