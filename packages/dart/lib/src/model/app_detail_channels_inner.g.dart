// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_detail_channels_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AppDetailChannelsInnerCWProxy {
  AppDetailChannelsInner id(int id);

  AppDetailChannelsInner name(String name);

  AppDetailChannelsInner currentVersionId(int? currentVersionId);

  AppDetailChannelsInner feedUrl(String feedUrl);

  AppDetailChannelsInner versions(
    List<AppDetailChannelsInnerVersionsInner> versions,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppDetailChannelsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppDetailChannelsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  AppDetailChannelsInner call({
    int id,
    String name,
    int? currentVersionId,
    String feedUrl,
    List<AppDetailChannelsInnerVersionsInner> versions,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAppDetailChannelsInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAppDetailChannelsInner.copyWith.fieldName(...)`
class _$AppDetailChannelsInnerCWProxyImpl
    implements _$AppDetailChannelsInnerCWProxy {
  const _$AppDetailChannelsInnerCWProxyImpl(this._value);

  final AppDetailChannelsInner _value;

  @override
  AppDetailChannelsInner id(int id) => this(id: id);

  @override
  AppDetailChannelsInner name(String name) => this(name: name);

  @override
  AppDetailChannelsInner currentVersionId(int? currentVersionId) =>
      this(currentVersionId: currentVersionId);

  @override
  AppDetailChannelsInner feedUrl(String feedUrl) => this(feedUrl: feedUrl);

  @override
  AppDetailChannelsInner versions(
    List<AppDetailChannelsInnerVersionsInner> versions,
  ) => this(versions: versions);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppDetailChannelsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppDetailChannelsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  AppDetailChannelsInner call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? currentVersionId = const $CopyWithPlaceholder(),
    Object? feedUrl = const $CopyWithPlaceholder(),
    Object? versions = const $CopyWithPlaceholder(),
  }) {
    return AppDetailChannelsInner(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      currentVersionId: currentVersionId == const $CopyWithPlaceholder()
          ? _value.currentVersionId
          // ignore: cast_nullable_to_non_nullable
          : currentVersionId as int?,
      feedUrl: feedUrl == const $CopyWithPlaceholder()
          ? _value.feedUrl
          // ignore: cast_nullable_to_non_nullable
          : feedUrl as String,
      versions: versions == const $CopyWithPlaceholder()
          ? _value.versions
          // ignore: cast_nullable_to_non_nullable
          : versions as List<AppDetailChannelsInnerVersionsInner>,
    );
  }
}

extension $AppDetailChannelsInnerCopyWith on AppDetailChannelsInner {
  /// Returns a callable class that can be used as follows: `instanceOfAppDetailChannelsInner.copyWith(...)` or like so:`instanceOfAppDetailChannelsInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AppDetailChannelsInnerCWProxy get copyWith =>
      _$AppDetailChannelsInnerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppDetailChannelsInner _$AppDetailChannelsInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AppDetailChannelsInner', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'currentVersionId',
      'feedUrl',
      'versions',
    ],
  );
  final val = AppDetailChannelsInner(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    name: $checkedConvert('name', (v) => v as String),
    currentVersionId: $checkedConvert(
      'currentVersionId',
      (v) => (v as num?)?.toInt(),
    ),
    feedUrl: $checkedConvert('feedUrl', (v) => v as String),
    versions: $checkedConvert(
      'versions',
      (v) => (v as List<dynamic>)
          .map(
            (e) => AppDetailChannelsInnerVersionsInner.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$AppDetailChannelsInnerToJson(
  AppDetailChannelsInner instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'currentVersionId': instance.currentVersionId,
  'feedUrl': instance.feedUrl,
  'versions': instance.versions.map((e) => e.toJson()).toList(),
};
