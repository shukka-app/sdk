// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_current_version_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SetCurrentVersionRequestCWProxy {
  SetCurrentVersionRequest currentVersion(String? currentVersion);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SetCurrentVersionRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SetCurrentVersionRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  SetCurrentVersionRequest call({String? currentVersion});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSetCurrentVersionRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSetCurrentVersionRequest.copyWith.fieldName(...)`
class _$SetCurrentVersionRequestCWProxyImpl
    implements _$SetCurrentVersionRequestCWProxy {
  const _$SetCurrentVersionRequestCWProxyImpl(this._value);

  final SetCurrentVersionRequest _value;

  @override
  SetCurrentVersionRequest currentVersion(String? currentVersion) =>
      this(currentVersion: currentVersion);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SetCurrentVersionRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SetCurrentVersionRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  SetCurrentVersionRequest call({
    Object? currentVersion = const $CopyWithPlaceholder(),
  }) {
    return SetCurrentVersionRequest(
      currentVersion: currentVersion == const $CopyWithPlaceholder()
          ? _value.currentVersion
          // ignore: cast_nullable_to_non_nullable
          : currentVersion as String?,
    );
  }
}

extension $SetCurrentVersionRequestCopyWith on SetCurrentVersionRequest {
  /// Returns a callable class that can be used as follows: `instanceOfSetCurrentVersionRequest.copyWith(...)` or like so:`instanceOfSetCurrentVersionRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SetCurrentVersionRequestCWProxy get copyWith =>
      _$SetCurrentVersionRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetCurrentVersionRequest _$SetCurrentVersionRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SetCurrentVersionRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['currentVersion']);
  final val = SetCurrentVersionRequest(
    currentVersion: $checkedConvert('currentVersion', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$SetCurrentVersionRequestToJson(
  SetCurrentVersionRequest instance,
) => <String, dynamic>{'currentVersion': instance.currentVersion};
