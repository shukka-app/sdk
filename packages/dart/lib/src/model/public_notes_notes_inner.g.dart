// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_notes_notes_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PublicNotesNotesInnerCWProxy {
  PublicNotesNotesInner locale(String locale);

  PublicNotesNotesInner markdown(String markdown);

  PublicNotesNotesInner html(String html);

  PublicNotesNotesInner text(String text);

  PublicNotesNotesInner version(String version);

  PublicNotesNotesInner releasedAt(int releasedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PublicNotesNotesInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PublicNotesNotesInner(...).copyWith(id: 12, name: "My name")
  /// ````
  PublicNotesNotesInner call({
    String locale,
    String markdown,
    String html,
    String text,
    String version,
    int releasedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPublicNotesNotesInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPublicNotesNotesInner.copyWith.fieldName(...)`
class _$PublicNotesNotesInnerCWProxyImpl
    implements _$PublicNotesNotesInnerCWProxy {
  const _$PublicNotesNotesInnerCWProxyImpl(this._value);

  final PublicNotesNotesInner _value;

  @override
  PublicNotesNotesInner locale(String locale) => this(locale: locale);

  @override
  PublicNotesNotesInner markdown(String markdown) => this(markdown: markdown);

  @override
  PublicNotesNotesInner html(String html) => this(html: html);

  @override
  PublicNotesNotesInner text(String text) => this(text: text);

  @override
  PublicNotesNotesInner version(String version) => this(version: version);

  @override
  PublicNotesNotesInner releasedAt(int releasedAt) =>
      this(releasedAt: releasedAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PublicNotesNotesInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PublicNotesNotesInner(...).copyWith(id: 12, name: "My name")
  /// ````
  PublicNotesNotesInner call({
    Object? locale = const $CopyWithPlaceholder(),
    Object? markdown = const $CopyWithPlaceholder(),
    Object? html = const $CopyWithPlaceholder(),
    Object? text = const $CopyWithPlaceholder(),
    Object? version = const $CopyWithPlaceholder(),
    Object? releasedAt = const $CopyWithPlaceholder(),
  }) {
    return PublicNotesNotesInner(
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
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as String,
      releasedAt: releasedAt == const $CopyWithPlaceholder()
          ? _value.releasedAt
          // ignore: cast_nullable_to_non_nullable
          : releasedAt as int,
    );
  }
}

extension $PublicNotesNotesInnerCopyWith on PublicNotesNotesInner {
  /// Returns a callable class that can be used as follows: `instanceOfPublicNotesNotesInner.copyWith(...)` or like so:`instanceOfPublicNotesNotesInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PublicNotesNotesInnerCWProxy get copyWith =>
      _$PublicNotesNotesInnerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicNotesNotesInner _$PublicNotesNotesInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PublicNotesNotesInner', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'locale',
      'markdown',
      'html',
      'text',
      'version',
      'releasedAt',
    ],
  );
  final val = PublicNotesNotesInner(
    locale: $checkedConvert('locale', (v) => v as String),
    markdown: $checkedConvert('markdown', (v) => v as String),
    html: $checkedConvert('html', (v) => v as String),
    text: $checkedConvert('text', (v) => v as String),
    version: $checkedConvert('version', (v) => v as String),
    releasedAt: $checkedConvert('releasedAt', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$PublicNotesNotesInnerToJson(
  PublicNotesNotesInner instance,
) => <String, dynamic>{
  'locale': instance.locale,
  'markdown': instance.markdown,
  'html': instance.html,
  'text': instance.text,
  'version': instance.version,
  'releasedAt': instance.releasedAt,
};
