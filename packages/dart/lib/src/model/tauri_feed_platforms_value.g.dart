// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tauri_feed_platforms_value.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TauriFeedPlatformsValueCWProxy {
  TauriFeedPlatformsValue url(String url);

  TauriFeedPlatformsValue signature(String signature);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TauriFeedPlatformsValue(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TauriFeedPlatformsValue(...).copyWith(id: 12, name: "My name")
  /// ````
  TauriFeedPlatformsValue call({String url, String signature});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTauriFeedPlatformsValue.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTauriFeedPlatformsValue.copyWith.fieldName(...)`
class _$TauriFeedPlatformsValueCWProxyImpl
    implements _$TauriFeedPlatformsValueCWProxy {
  const _$TauriFeedPlatformsValueCWProxyImpl(this._value);

  final TauriFeedPlatformsValue _value;

  @override
  TauriFeedPlatformsValue url(String url) => this(url: url);

  @override
  TauriFeedPlatformsValue signature(String signature) =>
      this(signature: signature);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TauriFeedPlatformsValue(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TauriFeedPlatformsValue(...).copyWith(id: 12, name: "My name")
  /// ````
  TauriFeedPlatformsValue call({
    Object? url = const $CopyWithPlaceholder(),
    Object? signature = const $CopyWithPlaceholder(),
  }) {
    return TauriFeedPlatformsValue(
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String,
      signature: signature == const $CopyWithPlaceholder()
          ? _value.signature
          // ignore: cast_nullable_to_non_nullable
          : signature as String,
    );
  }
}

extension $TauriFeedPlatformsValueCopyWith on TauriFeedPlatformsValue {
  /// Returns a callable class that can be used as follows: `instanceOfTauriFeedPlatformsValue.copyWith(...)` or like so:`instanceOfTauriFeedPlatformsValue.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TauriFeedPlatformsValueCWProxy get copyWith =>
      _$TauriFeedPlatformsValueCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TauriFeedPlatformsValue _$TauriFeedPlatformsValueFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TauriFeedPlatformsValue', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['url', 'signature']);
  final val = TauriFeedPlatformsValue(
    url: $checkedConvert('url', (v) => v as String),
    signature: $checkedConvert('signature', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$TauriFeedPlatformsValueToJson(
  TauriFeedPlatformsValue instance,
) => <String, dynamic>{'url': instance.url, 'signature': instance.signature};
