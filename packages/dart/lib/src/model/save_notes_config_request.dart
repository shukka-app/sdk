//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'save_notes_config_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SaveNotesConfigRequest {
  /// Returns a new [SaveNotesConfigRequest] instance.
  SaveNotesConfigRequest({

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
    bool operator ==(Object other) => identical(this, other) || other is SaveNotesConfigRequest &&
      other.enabled == enabled &&
      other.locales == locales &&
      other.fallbackLocale == fallbackLocale;

    @override
    int get hashCode =>
        enabled.hashCode +
        locales.hashCode +
        fallbackLocale.hashCode;

  factory SaveNotesConfigRequest.fromJson(Map<String, dynamic> json) => _$SaveNotesConfigRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SaveNotesConfigRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

