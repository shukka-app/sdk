//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'release_metadata.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReleaseMetadata {
  /// Returns a new [ReleaseMetadata] instance.
  ReleaseMetadata({

    required  this.metadata,

    required  this.version,
  });

      /// Custom JSON object; at most 16 KiB of compact UTF-8 JSON. Public after release.
  @JsonKey(
    
    name: r'metadata',
    required: true,
    includeIfNull: false,
  )


  final Map<String, Object> metadata;



  @JsonKey(
    
    name: r'version',
    required: true,
    includeIfNull: false,
  )


  final String version;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ReleaseMetadata &&
      other.metadata == metadata &&
      other.version == version;

    @override
    int get hashCode =>
        metadata.hashCode +
        version.hashCode;

  factory ReleaseMetadata.fromJson(Map<String, dynamic> json) => _$ReleaseMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$ReleaseMetadataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

