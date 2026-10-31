//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/channel_release_files_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_release.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChannelRelease {
  /// Returns a new [ChannelRelease] instance.
  ChannelRelease({

    required  this.version,

    required  this.releasedAt,

    required  this.files,
  });

  @JsonKey(
    
    name: r'version',
    required: true,
    includeIfNull: false,
  )


  final String version;



  @JsonKey(
    
    name: r'releasedAt',
    required: true,
    includeIfNull: false,
  )


  final int releasedAt;



  @JsonKey(
    
    name: r'files',
    required: true,
    includeIfNull: false,
  )


  final List<ChannelReleaseFilesInner> files;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ChannelRelease &&
      other.version == version &&
      other.releasedAt == releasedAt &&
      other.files == files;

    @override
    int get hashCode =>
        version.hashCode +
        releasedAt.hashCode +
        files.hashCode;

  factory ChannelRelease.fromJson(Map<String, dynamic> json) => _$ChannelReleaseFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelReleaseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

