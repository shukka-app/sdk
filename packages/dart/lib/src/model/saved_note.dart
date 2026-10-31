//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/editor_notes_notes_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'saved_note.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SavedNote {
  /// Returns a new [SavedNote] instance.
  SavedNote({

    required  this.note,
  });

  @JsonKey(
    
    name: r'note',
    required: true,
    includeIfNull: false,
  )


  final EditorNotesNotesInner note;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SavedNote &&
      other.note == note;

    @override
    int get hashCode =>
        note.hashCode;

  factory SavedNote.fromJson(Map<String, dynamic> json) => _$SavedNoteFromJson(json);

  Map<String, dynamic> toJson() => _$SavedNoteToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

