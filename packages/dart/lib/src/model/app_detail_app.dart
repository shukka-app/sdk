//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_detail_app.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AppDetailApp {
  /// Returns a new [AppDetailApp] instance.
  AppDetailApp({

    required  this.id,

    required  this.slug,

    required  this.name,

    required  this.s3Endpoint,

    required  this.s3Region,

    required  this.s3Bucket,

    required  this.s3Prefix,

    required  this.s3AccessKeyId,

    required  this.s3ForcePathStyle,

    required  this.releaseLogEnabled,

    required  this.releaseLogLocales,

    required  this.releaseLogFallbackLocale,

    required  this.updaterKind,

    required  this.createdAt,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'slug',
    required: true,
    includeIfNull: false,
  )


  final String slug;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r's3Endpoint',
    required: true,
    includeIfNull: true,
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
    
    name: r's3Prefix',
    required: true,
    includeIfNull: false,
  )


  final String s3Prefix;



  @JsonKey(
    
    name: r's3AccessKeyId',
    required: true,
    includeIfNull: false,
  )


  final String s3AccessKeyId;



  @JsonKey(
    
    name: r's3ForcePathStyle',
    required: true,
    includeIfNull: false,
  )


  final bool s3ForcePathStyle;



  @JsonKey(
    
    name: r'releaseLogEnabled',
    required: true,
    includeIfNull: false,
  )


  final bool releaseLogEnabled;



  @JsonKey(
    
    name: r'releaseLogLocales',
    required: true,
    includeIfNull: false,
  )


  final List<String> releaseLogLocales;



  @JsonKey(
    
    name: r'releaseLogFallbackLocale',
    required: true,
    includeIfNull: false,
  )


  final String releaseLogFallbackLocale;



  @JsonKey(
    
    name: r'updaterKind',
    required: true,
    includeIfNull: false,
  unknownEnumValue: AppDetailAppUpdaterKindEnum.unknownDefaultOpenApi,
  )


  final AppDetailAppUpdaterKindEnum updaterKind;



  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final int createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AppDetailApp &&
      other.id == id &&
      other.slug == slug &&
      other.name == name &&
      other.s3Endpoint == s3Endpoint &&
      other.s3Region == s3Region &&
      other.s3Bucket == s3Bucket &&
      other.s3Prefix == s3Prefix &&
      other.s3AccessKeyId == s3AccessKeyId &&
      other.s3ForcePathStyle == s3ForcePathStyle &&
      other.releaseLogEnabled == releaseLogEnabled &&
      other.releaseLogLocales == releaseLogLocales &&
      other.releaseLogFallbackLocale == releaseLogFallbackLocale &&
      other.updaterKind == updaterKind &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        id.hashCode +
        slug.hashCode +
        name.hashCode +
        (s3Endpoint == null ? 0 : s3Endpoint.hashCode) +
        s3Region.hashCode +
        s3Bucket.hashCode +
        s3Prefix.hashCode +
        s3AccessKeyId.hashCode +
        s3ForcePathStyle.hashCode +
        releaseLogEnabled.hashCode +
        releaseLogLocales.hashCode +
        releaseLogFallbackLocale.hashCode +
        updaterKind.hashCode +
        createdAt.hashCode;

  factory AppDetailApp.fromJson(Map<String, dynamic> json) => _$AppDetailAppFromJson(json);

  Map<String, dynamic> toJson() => _$AppDetailAppToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

enum AppDetailAppUpdaterKindEnum {
@JsonValue(r'electron')
electron(r'electron'),
@JsonValue(r'tauri')
tauri(r'tauri'),
@JsonValue(r'sparkle')
sparkle(r'sparkle'),
@JsonValue(r'sdk')
sdk(r'sdk'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const AppDetailAppUpdaterKindEnum(this.value);

final String value;

@override
String toString() => value;
}


