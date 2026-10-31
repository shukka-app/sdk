// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_notes.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EditorNotesCWProxy {
  EditorNotes notes(List<EditorNotesNotesInner> notes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EditorNotes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EditorNotes(...).copyWith(id: 12, name: "My name")
  /// ````
  EditorNotes call({List<EditorNotesNotesInner> notes});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEditorNotes.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEditorNotes.copyWith.fieldName(...)`
class _$EditorNotesCWProxyImpl implements _$EditorNotesCWProxy {
  const _$EditorNotesCWProxyImpl(this._value);

  final EditorNotes _value;

  @override
  EditorNotes notes(List<EditorNotesNotesInner> notes) => this(notes: notes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EditorNotes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EditorNotes(...).copyWith(id: 12, name: "My name")
  /// ````
  EditorNotes call({Object? notes = const $CopyWithPlaceholder()}) {
    return EditorNotes(
      notes: notes == const $CopyWithPlaceholder()
          ? _value.notes
          // ignore: cast_nullable_to_non_nullable
          : notes as List<EditorNotesNotesInner>,
    );
  }
}

extension $EditorNotesCopyWith on EditorNotes {
  /// Returns a callable class that can be used as follows: `instanceOfEditorNotes.copyWith(...)` or like so:`instanceOfEditorNotes.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EditorNotesCWProxy get copyWith => _$EditorNotesCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditorNotes _$EditorNotesFromJson(Map<String, dynamic> json) =>
    $checkedCreate('EditorNotes', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['notes']);
      final val = EditorNotes(
        notes: $checkedConvert(
          'notes',
          (v) => (v as List<dynamic>)
              .map(
                (e) =>
                    EditorNotesNotesInner.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$EditorNotesToJson(EditorNotes instance) =>
    <String, dynamic>{'notes': instance.notes.map((e) => e.toJson()).toList()};
