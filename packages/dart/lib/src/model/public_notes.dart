//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/public_notes_notes_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'public_notes.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PublicNotes {
  /// Returns a new [PublicNotes] instance.
  PublicNotes({

    required  this.notes,
  });

  @JsonKey(
    
    name: r'notes',
    required: true,
    includeIfNull: false,
  )


  final List<PublicNotesNotesInner> notes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PublicNotes &&
      other.notes == notes;

    @override
    int get hashCode =>
        notes.hashCode;

  factory PublicNotes.fromJson(Map<String, dynamic> json) => _$PublicNotesFromJson(json);

  Map<String, dynamic> toJson() => _$PublicNotesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

