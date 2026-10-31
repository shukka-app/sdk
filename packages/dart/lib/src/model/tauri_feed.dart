//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/tauri_feed_platforms_value.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tauri_feed.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TauriFeed {
  /// Returns a new [TauriFeed] instance.
  TauriFeed({

    required  this.version,

    required  this.pubDate,

    required  this.platforms,
  });

  @JsonKey(
    
    name: r'version',
    required: true,
    includeIfNull: false,
  )


  final String version;



  @JsonKey(
    
    name: r'pub_date',
    required: true,
    includeIfNull: false,
  )


  final String pubDate;



  @JsonKey(
    
    name: r'platforms',
    required: true,
    includeIfNull: false,
  )


  final Map<String, TauriFeedPlatformsValue> platforms;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TauriFeed &&
      other.version == version &&
      other.pubDate == pubDate &&
      other.platforms == platforms;

    @override
    int get hashCode =>
        version.hashCode +
        pubDate.hashCode +
        platforms.hashCode;

  factory TauriFeed.fromJson(Map<String, dynamic> json) => _$TauriFeedFromJson(json);

  Map<String, dynamic> toJson() => _$TauriFeedToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

