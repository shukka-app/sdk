//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notes_config_response_release_log.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NotesConfigResponseReleaseLog {
  /// Returns a new [NotesConfigResponseReleaseLog] instance.
  NotesConfigResponseReleaseLog({

    required  this.enabled,

    required  this.locales,

    required  this.fallbackLocale,
  });

  @JsonKey(
    
    name: r'enabled',
    required: true,
    includeIfNull: false,
  )


  final bool enabled;



  @JsonKey(
    
    name: r'locales',
    required: true,
    includeIfNull: false,
  )


  final List<String> locales;



  @JsonKey(
    
    name: r'fallbackLocale',
    required: true,
    includeIfNull: false,
  )


  final String fallbackLocale;





    @override
    bool operator ==(Object other) => identical(this, other) || other is NotesConfigResponseReleaseLog &&
      other.enabled == enabled &&
      other.locales == locales &&
      other.fallbackLocale == fallbackLocale;

    @override
    int get hashCode =>
        enabled.hashCode +
        locales.hashCode +
        fallbackLocale.hashCode;

  factory NotesConfigResponseReleaseLog.fromJson(Map<String, dynamic> json) => _$NotesConfigResponseReleaseLogFromJson(json);

  Map<String, dynamic> toJson() => _$NotesConfigResponseReleaseLogToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

