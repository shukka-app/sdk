// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_list_channels_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChannelListChannelsInnerCWProxy {
  ChannelListChannelsInner id(int id);

  ChannelListChannelsInner appId(int appId);

  ChannelListChannelsInner name(String name);

  ChannelListChannelsInner currentVersionId(int? currentVersionId);

  ChannelListChannelsInner createdAt(int createdAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelListChannelsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelListChannelsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelListChannelsInner call({
    int id,
    int appId,
    String name,
    int? currentVersionId,
    int createdAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChannelListChannelsInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChannelListChannelsInner.copyWith.fieldName(...)`
class _$ChannelListChannelsInnerCWProxyImpl
    implements _$ChannelListChannelsInnerCWProxy {
  const _$ChannelListChannelsInnerCWProxyImpl(this._value);

  final ChannelListChannelsInner _value;

  @override
  ChannelListChannelsInner id(int id) => this(id: id);

  @override
  ChannelListChannelsInner appId(int appId) => this(appId: appId);

  @override
  ChannelListChannelsInner name(String name) => this(name: name);

  @override
  ChannelListChannelsInner currentVersionId(int? currentVersionId) =>
      this(currentVersionId: currentVersionId);

  @override
  ChannelListChannelsInner createdAt(int createdAt) =>
      this(createdAt: createdAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelListChannelsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelListChannelsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelListChannelsInner call({
    Object? id = const $CopyWithPlaceholder(),
    Object? appId = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? currentVersionId = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
  }) {
    return ChannelListChannelsInner(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      appId: appId == const $CopyWithPlaceholder()
          ? _value.appId
          // ignore: cast_nullable_to_non_nullable
          : appId as int,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      currentVersionId: currentVersionId == const $CopyWithPlaceholder()
          ? _value.currentVersionId
          // ignore: cast_nullable_to_non_nullable
          : currentVersionId as int?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as int,
    );
  }
}

extension $ChannelListChannelsInnerCopyWith on ChannelListChannelsInner {
  /// Returns a callable class that can be used as follows: `instanceOfChannelListChannelsInner.copyWith(...)` or like so:`instanceOfChannelListChannelsInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChannelListChannelsInnerCWProxy get copyWith =>
      _$ChannelListChannelsInnerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelListChannelsInner _$ChannelListChannelsInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ChannelListChannelsInner', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'appId',
      'name',
      'currentVersionId',
      'createdAt',
    ],
  );
  final val = ChannelListChannelsInner(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    appId: $checkedConvert('appId', (v) => (v as num).toInt()),
    name: $checkedConvert('name', (v) => v as String),
    currentVersionId: $checkedConvert(
      'currentVersionId',
      (v) => (v as num?)?.toInt(),
    ),
    createdAt: $checkedConvert('createdAt', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$ChannelListChannelsInnerToJson(
  ChannelListChannelsInner instance,
) => <String, dynamic>{
  'id': instance.id,
  'appId': instance.appId,
  'name': instance.name,
  'currentVersionId': instance.currentVersionId,
  'createdAt': instance.createdAt,
};
