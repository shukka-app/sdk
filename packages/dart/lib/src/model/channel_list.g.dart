// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChannelListCWProxy {
  ChannelList channels(List<ChannelListChannelsInner> channels);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelList(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelList call({List<ChannelListChannelsInner> channels});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChannelList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChannelList.copyWith.fieldName(...)`
class _$ChannelListCWProxyImpl implements _$ChannelListCWProxy {
  const _$ChannelListCWProxyImpl(this._value);

  final ChannelList _value;

  @override
  ChannelList channels(List<ChannelListChannelsInner> channels) =>
      this(channels: channels);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelList(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelList call({Object? channels = const $CopyWithPlaceholder()}) {
    return ChannelList(
      channels: channels == const $CopyWithPlaceholder()
          ? _value.channels
          // ignore: cast_nullable_to_non_nullable
          : channels as List<ChannelListChannelsInner>,
    );
  }
}

extension $ChannelListCopyWith on ChannelList {
  /// Returns a callable class that can be used as follows: `instanceOfChannelList.copyWith(...)` or like so:`instanceOfChannelList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChannelListCWProxy get copyWith => _$ChannelListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelList _$ChannelListFromJson(Map<String, dynamic> json) => $checkedCreate(
  'ChannelList',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['channels']);
    final val = ChannelList(
      channels: $checkedConvert(
        'channels',
        (v) => (v as List<dynamic>)
            .map(
              (e) =>
                  ChannelListChannelsInner.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
    return val;
  },
);

Map<String, dynamic> _$ChannelListToJson(ChannelList instance) =>
    <String, dynamic>{
      'channels': instance.channels.map((e) => e.toJson()).toList(),
    };
