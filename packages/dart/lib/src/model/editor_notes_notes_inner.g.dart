// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_notes_notes_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EditorNotesNotesInnerCWProxy {
  EditorNotesNotesInner locale(String locale);

  EditorNotesNotesInner markdown(String markdown);

  EditorNotesNotesInner html(String html);

  EditorNotesNotesInner text(String text);

  EditorNotesNotesInner id(int id);

  EditorNotesNotesInner versionId(int versionId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EditorNotesNotesInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EditorNotesNotesInner(...).copyWith(id: 12, name: "My name")
  /// ````
  EditorNotesNotesInner call({
    String locale,
    String markdown,
    String html,
    String text,
    int id,
    int versionId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEditorNotesNotesInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEditorNotesNotesInner.copyWith.fieldName(...)`
class _$EditorNotesNotesInnerCWProxyImpl
    implements _$EditorNotesNotesInnerCWProxy {
  const _$EditorNotesNotesInnerCWProxyImpl(this._value);

  final EditorNotesNotesInner _value;

  @override
  EditorNotesNotesInner locale(String locale) => this(locale: locale);

  @override
  EditorNotesNotesInner markdown(String markdown) => this(markdown: markdown);

  @override
  EditorNotesNotesInner html(String html) => this(html: html);

  @override
  EditorNotesNotesInner text(String text) => this(text: text);

  @override
  EditorNotesNotesInner id(int id) => this(id: id);

  @override
  EditorNotesNotesInner versionId(int versionId) => this(versionId: versionId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EditorNotesNotesInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EditorNotesNotesInner(...).copyWith(id: 12, name: "My name")
  /// ````
  EditorNotesNotesInner call({
    Object? locale = const $CopyWithPlaceholder(),
    Object? markdown = const $CopyWithPlaceholder(),
    Object? html = const $CopyWithPlaceholder(),
    Object? text = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? versionId = const $CopyWithPlaceholder(),
  }) {
    return EditorNotesNotesInner(
      locale: locale == const $CopyWithPlaceholder()
          ? _value.locale
          // ignore: cast_nullable_to_non_nullable
          : locale as String,
      markdown: markdown == const $CopyWithPlaceholder()
          ? _value.markdown
          // ignore: cast_nullable_to_non_nullable
          : markdown as String,
      html: html == const $CopyWithPlaceholder()
          ? _value.html
          // ignore: cast_nullable_to_non_nullable
          : html as String,
      text: text == const $CopyWithPlaceholder()
          ? _value.text
          // ignore: cast_nullable_to_non_nullable
          : text as String,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      versionId: versionId == const $CopyWithPlaceholder()
          ? _value.versionId
          // ignore: cast_nullable_to_non_nullable
          : versionId as int,
    );
  }
}

extension $EditorNotesNotesInnerCopyWith on EditorNotesNotesInner {
  /// Returns a callable class that can be used as follows: `instanceOfEditorNotesNotesInner.copyWith(...)` or like so:`instanceOfEditorNotesNotesInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EditorNotesNotesInnerCWProxy get copyWith =>
      _$EditorNotesNotesInnerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditorNotesNotesInner _$EditorNotesNotesInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('EditorNotesNotesInner', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'locale',
      'markdown',
      'html',
      'text',
      'id',
      'versionId',
    ],
  );
  final val = EditorNotesNotesInner(
    locale: $checkedConvert('locale', (v) => v as String),
    markdown: $checkedConvert('markdown', (v) => v as String),
    html: $checkedConvert('html', (v) => v as String),
    text: $checkedConvert('text', (v) => v as String),
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    versionId: $checkedConvert('versionId', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$EditorNotesNotesInnerToJson(
  EditorNotesNotesInner instance,
) => <String, dynamic>{
  'locale': instance.locale,
  'markdown': instance.markdown,
  'html': instance.html,
  'text': instance.text,
  'id': instance.id,
  'versionId': instance.versionId,
};
