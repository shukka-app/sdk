// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_notes.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PublicNotesCWProxy {
  PublicNotes notes(List<PublicNotesNotesInner> notes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PublicNotes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PublicNotes(...).copyWith(id: 12, name: "My name")
  /// ````
  PublicNotes call({List<PublicNotesNotesInner> notes});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPublicNotes.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPublicNotes.copyWith.fieldName(...)`
class _$PublicNotesCWProxyImpl implements _$PublicNotesCWProxy {
  const _$PublicNotesCWProxyImpl(this._value);

  final PublicNotes _value;

  @override
  PublicNotes notes(List<PublicNotesNotesInner> notes) => this(notes: notes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PublicNotes(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PublicNotes(...).copyWith(id: 12, name: "My name")
  /// ````
  PublicNotes call({Object? notes = const $CopyWithPlaceholder()}) {
    return PublicNotes(
      notes: notes == const $CopyWithPlaceholder()
          ? _value.notes
          // ignore: cast_nullable_to_non_nullable
          : notes as List<PublicNotesNotesInner>,
    );
  }
}

extension $PublicNotesCopyWith on PublicNotes {
  /// Returns a callable class that can be used as follows: `instanceOfPublicNotes.copyWith(...)` or like so:`instanceOfPublicNotes.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PublicNotesCWProxy get copyWith => _$PublicNotesCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicNotes _$PublicNotesFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PublicNotes', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['notes']);
      final val = PublicNotes(
        notes: $checkedConvert(
          'notes',
          (v) => (v as List<dynamic>)
              .map(
                (e) =>
                    PublicNotesNotesInner.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PublicNotesToJson(PublicNotes instance) =>
    <String, dynamic>{'notes': instance.notes.map((e) => e.toJson()).toList()};
