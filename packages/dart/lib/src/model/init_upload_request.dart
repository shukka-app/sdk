//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/init_upload_request_files_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'init_upload_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InitUploadRequest {
  /// Returns a new [InitUploadRequest] instance.
  InitUploadRequest({

     this.app,

    required  this.channel,

    required  this.version,

     this.createChannel,

    required  this.files,
  });

  @JsonKey(
    
    name: r'app',
    required: false,
    includeIfNull: false,
  )


  final String? app;



  @JsonKey(
    
    name: r'channel',
    required: true,
    includeIfNull: false,
  )


  final String channel;



  @JsonKey(
    
    name: r'version',
    required: true,
    includeIfNull: false,
  )


  final String version;



  @JsonKey(
    
    name: r'createChannel',
    required: false,
    includeIfNull: false,
  )


  final bool? createChannel;



  @JsonKey(
    
    name: r'files',
    required: true,
    includeIfNull: false,
  )


  final List<InitUploadRequestFilesInner> files;





    @override
    bool operator ==(Object other) => identical(this, other) || other is InitUploadRequest &&
      other.app == app &&
      other.channel == channel &&
      other.version == version &&
      other.createChannel == createChannel &&
      other.files == files;

    @override
    int get hashCode =>
        app.hashCode +
        channel.hashCode +
        version.hashCode +
        createChannel.hashCode +
        files.hashCode;

  factory InitUploadRequest.fromJson(Map<String, dynamic> json) => _$InitUploadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InitUploadRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

