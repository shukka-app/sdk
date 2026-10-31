//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upsert_note_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpsertNoteRequest {
  /// Returns a new [UpsertNoteRequest] instance.
  UpsertNoteRequest({

    required  this.markdown,
  });

  @JsonKey(
    
    name: r'markdown',
    required: true,
    includeIfNull: false,
  )


  final String markdown;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpsertNoteRequest &&
      other.markdown == markdown;

    @override
    int get hashCode =>
        markdown.hashCode;

  factory UpsertNoteRequest.fromJson(Map<String, dynamic> json) => _$UpsertNoteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpsertNoteRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

