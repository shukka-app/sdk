// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upsert_note_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpsertNoteRequestCWProxy {
  UpsertNoteRequest markdown(String markdown);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpsertNoteRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpsertNoteRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpsertNoteRequest call({String markdown});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpsertNoteRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpsertNoteRequest.copyWith.fieldName(...)`
class _$UpsertNoteRequestCWProxyImpl implements _$UpsertNoteRequestCWProxy {
  const _$UpsertNoteRequestCWProxyImpl(this._value);

  final UpsertNoteRequest _value;

  @override
  UpsertNoteRequest markdown(String markdown) => this(markdown: markdown);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpsertNoteRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpsertNoteRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpsertNoteRequest call({Object? markdown = const $CopyWithPlaceholder()}) {
    return UpsertNoteRequest(
      markdown: markdown == const $CopyWithPlaceholder()
          ? _value.markdown
          // ignore: cast_nullable_to_non_nullable
          : markdown as String,
    );
  }
}

extension $UpsertNoteRequestCopyWith on UpsertNoteRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUpsertNoteRequest.copyWith(...)` or like so:`instanceOfUpsertNoteRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpsertNoteRequestCWProxy get copyWith =>
      _$UpsertNoteRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpsertNoteRequest _$UpsertNoteRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpsertNoteRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['markdown']);
      final val = UpsertNoteRequest(
        markdown: $checkedConvert('markdown', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$UpsertNoteRequestToJson(UpsertNoteRequest instance) =>
    <String, dynamic>{'markdown': instance.markdown};
