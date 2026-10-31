// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_detail_keys_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AppDetailKeysInnerCWProxy {
  AppDetailKeysInner id(int id);

  AppDetailKeysInner name(String name);

  AppDetailKeysInner hint(String hint);

  AppDetailKeysInner createdAt(int createdAt);

  AppDetailKeysInner lastUsedAt(int? lastUsedAt);

  AppDetailKeysInner revokedAt(int? revokedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppDetailKeysInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppDetailKeysInner(...).copyWith(id: 12, name: "My name")
  /// ````
  AppDetailKeysInner call({
    int id,
    String name,
    String hint,
    int createdAt,
    int? lastUsedAt,
    int? revokedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAppDetailKeysInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAppDetailKeysInner.copyWith.fieldName(...)`
class _$AppDetailKeysInnerCWProxyImpl implements _$AppDetailKeysInnerCWProxy {
  const _$AppDetailKeysInnerCWProxyImpl(this._value);

  final AppDetailKeysInner _value;

  @override
  AppDetailKeysInner id(int id) => this(id: id);

  @override
  AppDetailKeysInner name(String name) => this(name: name);

  @override
  AppDetailKeysInner hint(String hint) => this(hint: hint);

  @override
  AppDetailKeysInner createdAt(int createdAt) => this(createdAt: createdAt);

  @override
  AppDetailKeysInner lastUsedAt(int? lastUsedAt) =>
      this(lastUsedAt: lastUsedAt);

  @override
  AppDetailKeysInner revokedAt(int? revokedAt) => this(revokedAt: revokedAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppDetailKeysInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppDetailKeysInner(...).copyWith(id: 12, name: "My name")
  /// ````
  AppDetailKeysInner call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? hint = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? lastUsedAt = const $CopyWithPlaceholder(),
    Object? revokedAt = const $CopyWithPlaceholder(),
  }) {
    return AppDetailKeysInner(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      hint: hint == const $CopyWithPlaceholder()
          ? _value.hint
          // ignore: cast_nullable_to_non_nullable
          : hint as String,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as int,
      lastUsedAt: lastUsedAt == const $CopyWithPlaceholder()
          ? _value.lastUsedAt
          // ignore: cast_nullable_to_non_nullable
          : lastUsedAt as int?,
      revokedAt: revokedAt == const $CopyWithPlaceholder()
          ? _value.revokedAt
          // ignore: cast_nullable_to_non_nullable
          : revokedAt as int?,
    );
  }
}

extension $AppDetailKeysInnerCopyWith on AppDetailKeysInner {
  /// Returns a callable class that can be used as follows: `instanceOfAppDetailKeysInner.copyWith(...)` or like so:`instanceOfAppDetailKeysInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AppDetailKeysInnerCWProxy get copyWith =>
      _$AppDetailKeysInnerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppDetailKeysInner _$AppDetailKeysInnerFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AppDetailKeysInner', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const [
          'id',
          'name',
          'hint',
          'createdAt',
          'lastUsedAt',
          'revokedAt',
        ],
      );
      final val = AppDetailKeysInner(
        id: $checkedConvert('id', (v) => (v as num).toInt()),
        name: $checkedConvert('name', (v) => v as String),
        hint: $checkedConvert('hint', (v) => v as String),
        createdAt: $checkedConvert('createdAt', (v) => (v as num).toInt()),
        lastUsedAt: $checkedConvert('lastUsedAt', (v) => (v as num?)?.toInt()),
        revokedAt: $checkedConvert('revokedAt', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$AppDetailKeysInnerToJson(AppDetailKeysInner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hint': instance.hint,
      'createdAt': instance.createdAt,
      'lastUsedAt': instance.lastUsedAt,
      'revokedAt': instance.revokedAt,
    };
