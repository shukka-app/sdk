//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_release_files_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChannelReleaseFilesInner {
  /// Returns a new [ChannelReleaseFilesInner] instance.
  ChannelReleaseFilesInner({

    required  this.filename,

    required  this.size,

    required  this.url,
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
    
    name: r'url',
    required: true,
    includeIfNull: false,
  )


  final String url;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ChannelReleaseFilesInner &&
      other.filename == filename &&
      other.size == size &&
      other.url == url;

    @override
    int get hashCode =>
        filename.hashCode +
        size.hashCode +
        url.hashCode;

  factory ChannelReleaseFilesInner.fromJson(Map<String, dynamic> json) => _$ChannelReleaseFilesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelReleaseFilesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

