// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_detail.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AppDetailCWProxy {
  AppDetail app(AppDetailApp app);

  AppDetail channels(List<AppDetailChannelsInner> channels);

  AppDetail keys(List<AppDetailKeysInner>? keys);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppDetail(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppDetail(...).copyWith(id: 12, name: "My name")
  /// ````
  AppDetail call({
    AppDetailApp app,
    List<AppDetailChannelsInner> channels,
    List<AppDetailKeysInner>? keys,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAppDetail.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAppDetail.copyWith.fieldName(...)`
class _$AppDetailCWProxyImpl implements _$AppDetailCWProxy {
  const _$AppDetailCWProxyImpl(this._value);

  final AppDetail _value;

  @override
  AppDetail app(AppDetailApp app) => this(app: app);

  @override
  AppDetail channels(List<AppDetailChannelsInner> channels) =>
      this(channels: channels);

  @override
  AppDetail keys(List<AppDetailKeysInner>? keys) => this(keys: keys);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppDetail(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppDetail(...).copyWith(id: 12, name: "My name")
  /// ````
  AppDetail call({
    Object? app = const $CopyWithPlaceholder(),
    Object? channels = const $CopyWithPlaceholder(),
    Object? keys = const $CopyWithPlaceholder(),
  }) {
    return AppDetail(
      app: app == const $CopyWithPlaceholder()
          ? _value.app
          // ignore: cast_nullable_to_non_nullable
          : app as AppDetailApp,
      channels: channels == const $CopyWithPlaceholder()
          ? _value.channels
          // ignore: cast_nullable_to_non_nullable
          : channels as List<AppDetailChannelsInner>,
      keys: keys == const $CopyWithPlaceholder()
          ? _value.keys
          // ignore: cast_nullable_to_non_nullable
          : keys as List<AppDetailKeysInner>?,
    );
  }
}

extension $AppDetailCopyWith on AppDetail {
  /// Returns a callable class that can be used as follows: `instanceOfAppDetail.copyWith(...)` or like so:`instanceOfAppDetail.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AppDetailCWProxy get copyWith => _$AppDetailCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppDetail _$AppDetailFromJson(Map<String, dynamic> json) => $checkedCreate(
  'AppDetail',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['app', 'channels']);
    final val = AppDetail(
      app: $checkedConvert(
        'app',
        (v) => AppDetailApp.fromJson(v as Map<String, dynamic>),
      ),
      channels: $checkedConvert(
        'channels',
        (v) => (v as List<dynamic>)
            .map(
              (e) => AppDetailChannelsInner.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      keys: $checkedConvert(
        'keys',
        (v) => (v as List<dynamic>?)
            ?.map((e) => AppDetailKeysInner.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
);

Map<String, dynamic> _$AppDetailToJson(AppDetail instance) => <String, dynamic>{
  'app': instance.app.toJson(),
  'channels': instance.channels.map((e) => e.toJson()).toList(),
  'keys': ?instance.keys?.map((e) => e.toJson()).toList(),
};
