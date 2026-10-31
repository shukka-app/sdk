//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/notes_config_response_release_log.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notes_config_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NotesConfigResponse {
  /// Returns a new [NotesConfigResponse] instance.
  NotesConfigResponse({

    required  this.releaseLog,
  });

  @JsonKey(
    
    name: r'releaseLog',
    required: true,
    includeIfNull: false,
  )


  final NotesConfigResponseReleaseLog releaseLog;





    @override
    bool operator ==(Object other) => identical(this, other) || other is NotesConfigResponse &&
      other.releaseLog == releaseLog;

    @override
    int get hashCode =>
        releaseLog.hashCode;

  factory NotesConfigResponse.fromJson(Map<String, dynamic> json) => _$NotesConfigResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NotesConfigResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

