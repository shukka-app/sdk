// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ErrorCWProxy {
  Error error(ErrorErrorEnum error);

  Error message(String message);

  Error details(Object? details);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Error(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Error(...).copyWith(id: 12, name: "My name")
  /// ````
  Error call({ErrorErrorEnum error, String message, Object? details});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfError.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfError.copyWith.fieldName(...)`
class _$ErrorCWProxyImpl implements _$ErrorCWProxy {
  const _$ErrorCWProxyImpl(this._value);

  final Error _value;

  @override
  Error error(ErrorErrorEnum error) => this(error: error);

  @override
  Error message(String message) => this(message: message);

  @override
  Error details(Object? details) => this(details: details);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Error(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Error(...).copyWith(id: 12, name: "My name")
  /// ````
  Error call({
    Object? error = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
  }) {
    return Error(
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as ErrorErrorEnum,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as Object?,
    );
  }
}

extension $ErrorCopyWith on Error {
  /// Returns a callable class that can be used as follows: `instanceOfError.copyWith(...)` or like so:`instanceOfError.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ErrorCWProxy get copyWith => _$ErrorCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Error _$ErrorFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Error', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['error', 'message']);
      final val = Error(
        error: $checkedConvert(
          'error',
          (v) => $enumDecode(
            _$ErrorErrorEnumEnumMap,
            v,
            unknownValue: ErrorErrorEnum.unknownDefaultOpenApi,
          ),
        ),
        message: $checkedConvert('message', (v) => v as String),
        details: $checkedConvert('details', (v) => v),
      );
      return val;
    });

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
  'error': _$ErrorErrorEnumEnumMap[instance.error]!,
  'message': instance.message,
  'details': ?instance.details,
};

const _$ErrorErrorEnumEnumMap = {
  ErrorErrorEnum.unauthorized: 'unauthorized',
  ErrorErrorEnum.forbidden: 'forbidden',
  ErrorErrorEnum.notFound: 'not_found',
  ErrorErrorEnum.conflict: 'conflict',
  ErrorErrorEnum.invalidRequest: 'invalid_request',
  ErrorErrorEnum.storageError: 'storage_error',
  ErrorErrorEnum.metadataError: 'metadata_error',
  ErrorErrorEnum.rateLimited: 'rate_limited',
  ErrorErrorEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};
