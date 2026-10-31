//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/editor_notes_notes_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'editor_notes.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EditorNotes {
  /// Returns a new [EditorNotes] instance.
  EditorNotes({

    required  this.notes,
  });

  @JsonKey(
    
    name: r'notes',
    required: true,
    includeIfNull: false,
  )


  final List<EditorNotesNotesInner> notes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EditorNotes &&
      other.notes == notes;

    @override
    int get hashCode =>
        notes.hashCode;

  factory EditorNotes.fromJson(Map<String, dynamic> json) => _$EditorNotesFromJson(json);

  Map<String, dynamic> toJson() => _$EditorNotesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

