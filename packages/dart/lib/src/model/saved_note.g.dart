// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_note.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SavedNoteCWProxy {
  SavedNote note(EditorNotesNotesInner note);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SavedNote(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SavedNote(...).copyWith(id: 12, name: "My name")
  /// ````
  SavedNote call({EditorNotesNotesInner note});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSavedNote.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSavedNote.copyWith.fieldName(...)`
class _$SavedNoteCWProxyImpl implements _$SavedNoteCWProxy {
  const _$SavedNoteCWProxyImpl(this._value);

  final SavedNote _value;

  @override
  SavedNote note(EditorNotesNotesInner note) => this(note: note);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SavedNote(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SavedNote(...).copyWith(id: 12, name: "My name")
  /// ````
  SavedNote call({Object? note = const $CopyWithPlaceholder()}) {
    return SavedNote(
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as EditorNotesNotesInner,
    );
  }
}

extension $SavedNoteCopyWith on SavedNote {
  /// Returns a callable class that can be used as follows: `instanceOfSavedNote.copyWith(...)` or like so:`instanceOfSavedNote.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SavedNoteCWProxy get copyWith => _$SavedNoteCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SavedNote _$SavedNoteFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SavedNote', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['note']);
      final val = SavedNote(
        note: $checkedConvert(
          'note',
          (v) => EditorNotesNotesInner.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SavedNoteToJson(SavedNote instance) => <String, dynamic>{
  'note': instance.note.toJson(),
};
