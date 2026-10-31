// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_created.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChannelCreatedCWProxy {
  ChannelCreated channel(ChannelListChannelsInner channel);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelCreated(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelCreated(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelCreated call({ChannelListChannelsInner channel});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChannelCreated.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChannelCreated.copyWith.fieldName(...)`
class _$ChannelCreatedCWProxyImpl implements _$ChannelCreatedCWProxy {
  const _$ChannelCreatedCWProxyImpl(this._value);

  final ChannelCreated _value;

  @override
  ChannelCreated channel(ChannelListChannelsInner channel) =>
      this(channel: channel);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelCreated(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelCreated(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelCreated call({Object? channel = const $CopyWithPlaceholder()}) {
    return ChannelCreated(
      channel: channel == const $CopyWithPlaceholder()
          ? _value.channel
          // ignore: cast_nullable_to_non_nullable
          : channel as ChannelListChannelsInner,
    );
  }
}

extension $ChannelCreatedCopyWith on ChannelCreated {
  /// Returns a callable class that can be used as follows: `instanceOfChannelCreated.copyWith(...)` or like so:`instanceOfChannelCreated.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChannelCreatedCWProxy get copyWith => _$ChannelCreatedCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelCreated _$ChannelCreatedFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ChannelCreated', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['channel']);
      final val = ChannelCreated(
        channel: $checkedConvert(
          'channel',
          (v) => ChannelListChannelsInner.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ChannelCreatedToJson(ChannelCreated instance) =>
    <String, dynamic>{'channel': instance.channel.toJson()};
