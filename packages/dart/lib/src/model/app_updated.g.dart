// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_updated.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AppUpdatedCWProxy {
  AppUpdated app(AppDetailApp app);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppUpdated(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppUpdated(...).copyWith(id: 12, name: "My name")
  /// ````
  AppUpdated call({AppDetailApp app});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAppUpdated.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAppUpdated.copyWith.fieldName(...)`
class _$AppUpdatedCWProxyImpl implements _$AppUpdatedCWProxy {
  const _$AppUpdatedCWProxyImpl(this._value);

  final AppUpdated _value;

  @override
  AppUpdated app(AppDetailApp app) => this(app: app);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AppUpdated(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AppUpdated(...).copyWith(id: 12, name: "My name")
  /// ````
  AppUpdated call({Object? app = const $CopyWithPlaceholder()}) {
    return AppUpdated(
      app: app == const $CopyWithPlaceholder()
          ? _value.app
          // ignore: cast_nullable_to_non_nullable
          : app as AppDetailApp,
    );
  }
}

extension $AppUpdatedCopyWith on AppUpdated {
  /// Returns a callable class that can be used as follows: `instanceOfAppUpdated.copyWith(...)` or like so:`instanceOfAppUpdated.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AppUpdatedCWProxy get copyWith => _$AppUpdatedCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUpdated _$AppUpdatedFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AppUpdated', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['app']);
      final val = AppUpdated(
        app: $checkedConvert(
          'app',
          (v) => AppDetailApp.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AppUpdatedToJson(AppUpdated instance) =>
    <String, dynamic>{'app': instance.app.toJson()};
