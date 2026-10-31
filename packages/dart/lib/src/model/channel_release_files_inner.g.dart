// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_release_files_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChannelReleaseFilesInnerCWProxy {
  ChannelReleaseFilesInner filename(String filename);

  ChannelReleaseFilesInner size(int size);

  ChannelReleaseFilesInner url(String url);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelReleaseFilesInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelReleaseFilesInner(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelReleaseFilesInner call({String filename, int size, String url});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChannelReleaseFilesInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChannelReleaseFilesInner.copyWith.fieldName(...)`
class _$ChannelReleaseFilesInnerCWProxyImpl
    implements _$ChannelReleaseFilesInnerCWProxy {
  const _$ChannelReleaseFilesInnerCWProxyImpl(this._value);

  final ChannelReleaseFilesInner _value;

  @override
  ChannelReleaseFilesInner filename(String filename) =>
      this(filename: filename);

  @override
  ChannelReleaseFilesInner size(int size) => this(size: size);

  @override
  ChannelReleaseFilesInner url(String url) => this(url: url);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelReleaseFilesInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelReleaseFilesInner(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelReleaseFilesInner call({
    Object? filename = const $CopyWithPlaceholder(),
    Object? size = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
  }) {
    return ChannelReleaseFilesInner(
      filename: filename == const $CopyWithPlaceholder()
          ? _value.filename
          // ignore: cast_nullable_to_non_nullable
          : filename as String,
      size: size == const $CopyWithPlaceholder()
          ? _value.size
          // ignore: cast_nullable_to_non_nullable
          : size as int,
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String,
    );
  }
}

extension $ChannelReleaseFilesInnerCopyWith on ChannelReleaseFilesInner {
  /// Returns a callable class that can be used as follows: `instanceOfChannelReleaseFilesInner.copyWith(...)` or like so:`instanceOfChannelReleaseFilesInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChannelReleaseFilesInnerCWProxy get copyWith =>
      _$ChannelReleaseFilesInnerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelReleaseFilesInner _$ChannelReleaseFilesInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ChannelReleaseFilesInner', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['filename', 'size', 'url']);
  final val = ChannelReleaseFilesInner(
    filename: $checkedConvert('filename', (v) => v as String),
    size: $checkedConvert('size', (v) => (v as num).toInt()),
    url: $checkedConvert('url', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ChannelReleaseFilesInnerToJson(
  ChannelReleaseFilesInner instance,
) => <String, dynamic>{
  'filename': instance.filename,
  'size': instance.size,
  'url': instance.url,
};
