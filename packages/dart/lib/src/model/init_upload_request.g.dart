// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_upload_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InitUploadRequestCWProxy {
  InitUploadRequest app(String? app);

  InitUploadRequest channel(String channel);

  InitUploadRequest version(String version);

  InitUploadRequest createChannel(bool? createChannel);

  InitUploadRequest files(List<InitUploadRequestFilesInner> files);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `InitUploadRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// InitUploadRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  InitUploadRequest call({
    String? app,
    String channel,
    String version,
    bool? createChannel,
    List<InitUploadRequestFilesInner> files,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfInitUploadRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfInitUploadRequest.copyWith.fieldName(...)`
class _$InitUploadRequestCWProxyImpl implements _$InitUploadRequestCWProxy {
  const _$InitUploadRequestCWProxyImpl(this._value);

  final InitUploadRequest _value;

  @override
  InitUploadRequest app(String? app) => this(app: app);

  @override
  InitUploadRequest channel(String channel) => this(channel: channel);

  @override
  InitUploadRequest version(String version) => this(version: version);

  @override
  InitUploadRequest createChannel(bool? createChannel) =>
      this(createChannel: createChannel);

  @override
  InitUploadRequest files(List<InitUploadRequestFilesInner> files) =>
      this(files: files);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `InitUploadRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// InitUploadRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  InitUploadRequest call({
    Object? app = const $CopyWithPlaceholder(),
    Object? channel = const $CopyWithPlaceholder(),
    Object? version = const $CopyWithPlaceholder(),
    Object? createChannel = const $CopyWithPlaceholder(),
    Object? files = const $CopyWithPlaceholder(),
  }) {
    return InitUploadRequest(
      app: app == const $CopyWithPlaceholder()
          ? _value.app
          // ignore: cast_nullable_to_non_nullable
          : app as String?,
      channel: channel == const $CopyWithPlaceholder()
          ? _value.channel
          // ignore: cast_nullable_to_non_nullable
          : channel as String,
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as String,
      createChannel: createChannel == const $CopyWithPlaceholder()
          ? _value.createChannel
          // ignore: cast_nullable_to_non_nullable
          : createChannel as bool?,
      files: files == const $CopyWithPlaceholder()
          ? _value.files
          // ignore: cast_nullable_to_non_nullable
          : files as List<InitUploadRequestFilesInner>,
    );
  }
}

extension $InitUploadRequestCopyWith on InitUploadRequest {
  /// Returns a callable class that can be used as follows: `instanceOfInitUploadRequest.copyWith(...)` or like so:`instanceOfInitUploadRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InitUploadRequestCWProxy get copyWith =>
      _$InitUploadRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitUploadRequest _$InitUploadRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InitUploadRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['channel', 'version', 'files']);
      final val = InitUploadRequest(
        app: $checkedConvert('app', (v) => v as String?),
        channel: $checkedConvert('channel', (v) => v as String),
        version: $checkedConvert('version', (v) => v as String),
        createChannel: $checkedConvert('createChannel', (v) => v as bool?),
        files: $checkedConvert(
          'files',
          (v) => (v as List<dynamic>)
              .map(
                (e) => InitUploadRequestFilesInner.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$InitUploadRequestToJson(InitUploadRequest instance) =>
    <String, dynamic>{
      'app': ?instance.app,
      'channel': instance.channel,
      'version': instance.version,
      'createChannel': ?instance.createChannel,
      'files': instance.files.map((e) => e.toJson()).toList(),
    };
