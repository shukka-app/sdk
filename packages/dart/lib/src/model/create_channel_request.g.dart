// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_channel_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateChannelRequestCWProxy {
  CreateChannelRequest name(String name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateChannelRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateChannelRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateChannelRequest call({String name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateChannelRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateChannelRequest.copyWith.fieldName(...)`
class _$CreateChannelRequestCWProxyImpl
    implements _$CreateChannelRequestCWProxy {
  const _$CreateChannelRequestCWProxyImpl(this._value);

  final CreateChannelRequest _value;

  @override
  CreateChannelRequest name(String name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateChannelRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateChannelRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateChannelRequest call({Object? name = const $CopyWithPlaceholder()}) {
    return CreateChannelRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $CreateChannelRequestCopyWith on CreateChannelRequest {
  /// Returns a callable class that can be used as follows: `instanceOfCreateChannelRequest.copyWith(...)` or like so:`instanceOfCreateChannelRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateChannelRequestCWProxy get copyWith =>
      _$CreateChannelRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateChannelRequest _$CreateChannelRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateChannelRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = CreateChannelRequest(
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$CreateChannelRequestToJson(
  CreateChannelRequest instance,
) => <String, dynamic>{'name': instance.name};
