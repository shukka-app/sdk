//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_update_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AppUpdateRequest {
  /// Returns a new [AppUpdateRequest] instance.
  AppUpdateRequest({

    required  this.name,

    required  this.slug,

     this.s3Endpoint,

    required  this.s3Region,

    required  this.s3Bucket,

     this.s3Prefix = '',

    required  this.s3AccessKeyId,

     this.s3SecretAccessKey,

     this.s3ForcePathStyle = false,

     this.updaterKind,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'slug',
    required: true,
    includeIfNull: false,
  )


  final String slug;



  @JsonKey(
    
    name: r's3Endpoint',
    required: false,
    includeIfNull: false,
  )


  final String? s3Endpoint;



  @JsonKey(
    
    name: r's3Region',
    required: true,
    includeIfNull: false,
  )


  final String s3Region;



  @JsonKey(
    
    name: r's3Bucket',
    required: true,
    includeIfNull: false,
  )


  final String s3Bucket;



  @JsonKey(
    defaultValue: '',
    name: r's3Prefix',
    required: false,
    includeIfNull: false,
  )


  final String? s3Prefix;



  @JsonKey(
    
    name: r's3AccessKeyId',
    required: true,
    includeIfNull: false,
  )


  final String s3AccessKeyId;



  @JsonKey(
    
    name: r's3SecretAccessKey',
    required: false,
    includeIfNull: false,
  )


  final String? s3SecretAccessKey;



  @JsonKey(
    defaultValue: false,
    name: r's3ForcePathStyle',
    required: false,
    includeIfNull: false,
  )


  final bool? s3ForcePathStyle;



  @JsonKey(
    
    name: r'updaterKind',
    required: false,
    includeIfNull: false,
  unknownEnumValue: AppUpdateRequestUpdaterKindEnum.unknownDefaultOpenApi,
  )


  final AppUpdateRequestUpdaterKindEnum? updaterKind;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AppUpdateRequest &&
      other.name == name &&
      other.slug == slug &&
      other.s3Endpoint == s3Endpoint &&
      other.s3Region == s3Region &&
      other.s3Bucket == s3Bucket &&
      other.s3Prefix == s3Prefix &&
      other.s3AccessKeyId == s3AccessKeyId &&
      other.s3SecretAccessKey == s3SecretAccessKey &&
      other.s3ForcePathStyle == s3ForcePathStyle &&
      other.updaterKind == updaterKind;

    @override
    int get hashCode =>
        name.hashCode +
        slug.hashCode +
        (s3Endpoint == null ? 0 : s3Endpoint.hashCode) +
        s3Region.hashCode +
        s3Bucket.hashCode +
        s3Prefix.hashCode +
        s3AccessKeyId.hashCode +
        s3SecretAccessKey.hashCode +
        s3ForcePathStyle.hashCode +
        updaterKind.hashCode;

  factory AppUpdateRequest.fromJson(Map<String, dynamic> json) => _$AppUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AppUpdateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

enum AppUpdateRequestUpdaterKindEnum {
@JsonValue(r'electron')
electron(r'electron'),
@JsonValue(r'tauri')
tauri(r'tauri'),
@JsonValue(r'sparkle')
sparkle(r'sparkle'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const AppUpdateRequestUpdaterKindEnum(this.value);

final String value;

@override
String toString() => value;
}


