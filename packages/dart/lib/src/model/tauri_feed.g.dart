// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tauri_feed.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TauriFeedCWProxy {
  TauriFeed version(String version);

  TauriFeed pubDate(String pubDate);

  TauriFeed platforms(Map<String, TauriFeedPlatformsValue> platforms);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TauriFeed(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TauriFeed(...).copyWith(id: 12, name: "My name")
  /// ````
  TauriFeed call({
    String version,
    String pubDate,
    Map<String, TauriFeedPlatformsValue> platforms,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTauriFeed.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTauriFeed.copyWith.fieldName(...)`
class _$TauriFeedCWProxyImpl implements _$TauriFeedCWProxy {
  const _$TauriFeedCWProxyImpl(this._value);

  final TauriFeed _value;

  @override
  TauriFeed version(String version) => this(version: version);

  @override
  TauriFeed pubDate(String pubDate) => this(pubDate: pubDate);

  @override
  TauriFeed platforms(Map<String, TauriFeedPlatformsValue> platforms) =>
      this(platforms: platforms);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TauriFeed(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TauriFeed(...).copyWith(id: 12, name: "My name")
  /// ````
  TauriFeed call({
    Object? version = const $CopyWithPlaceholder(),
    Object? pubDate = const $CopyWithPlaceholder(),
    Object? platforms = const $CopyWithPlaceholder(),
  }) {
    return TauriFeed(
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as String,
      pubDate: pubDate == const $CopyWithPlaceholder()
          ? _value.pubDate
          // ignore: cast_nullable_to_non_nullable
          : pubDate as String,
      platforms: platforms == const $CopyWithPlaceholder()
          ? _value.platforms
          // ignore: cast_nullable_to_non_nullable
          : platforms as Map<String, TauriFeedPlatformsValue>,
    );
  }
}

extension $TauriFeedCopyWith on TauriFeed {
  /// Returns a callable class that can be used as follows: `instanceOfTauriFeed.copyWith(...)` or like so:`instanceOfTauriFeed.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TauriFeedCWProxy get copyWith => _$TauriFeedCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TauriFeed _$TauriFeedFromJson(Map<String, dynamic> json) => $checkedCreate(
  'TauriFeed',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['version', 'pub_date', 'platforms']);
    final val = TauriFeed(
      version: $checkedConvert('version', (v) => v as String),
      pubDate: $checkedConvert('pub_date', (v) => v as String),
      platforms: $checkedConvert(
        'platforms',
        (v) => (v as Map<String, dynamic>).map(
          (k, e) => MapEntry(
            k,
            TauriFeedPlatformsValue.fromJson(e as Map<String, dynamic>),
          ),
        ),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'pubDate': 'pub_date'},
);

Map<String, dynamic> _$TauriFeedToJson(TauriFeed instance) => <String, dynamic>{
  'version': instance.version,
  'pub_date': instance.pubDate,
  'platforms': instance.platforms.map((k, e) => MapEntry(k, e.toJson())),
};
