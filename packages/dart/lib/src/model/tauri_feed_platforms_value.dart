//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tauri_feed_platforms_value.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TauriFeedPlatformsValue {
  /// Returns a new [TauriFeedPlatformsValue] instance.
  TauriFeedPlatformsValue({

    required  this.url,

    required  this.signature,
  });

  @JsonKey(
    
    name: r'url',
    required: true,
    includeIfNull: false,
  )


  final String url;



  @JsonKey(
    
    name: r'signature',
    required: true,
    includeIfNull: false,
  )


  final String signature;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TauriFeedPlatformsValue &&
      other.url == url &&
      other.signature == signature;

    @override
    int get hashCode =>
        url.hashCode +
        signature.hashCode;

  factory TauriFeedPlatformsValue.fromJson(Map<String, dynamic> json) => _$TauriFeedPlatformsValueFromJson(json);

  Map<String, dynamic> toJson() => _$TauriFeedPlatformsValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

