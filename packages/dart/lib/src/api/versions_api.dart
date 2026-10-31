//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:shukka_sdk/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:shukka_sdk/src/model/error.dart';
import 'package:shukka_sdk/src/model/ok_response.dart';
import 'package:shukka_sdk/src/model/release_metadata.dart';
import 'package:shukka_sdk/src/model/replace_release_metadata_request.dart';
import 'package:shukka_sdk/src/model/version_trend.dart';

class VersionsApi {

  final Dio _dio;

  const VersionsApi(this._dio);

  /// Delete a version
  /// Deletes the version and its objects.
  ///
  /// Parameters:
  /// * [appSlug] 
  /// * [channel] 
  /// * [version] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OkResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OkResponse>> deleteVersion({ 
    required String appSlug,
    required String channel,
    required String version,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/apps/{appSlug}/channels/{channel}/versions/{version}'.replaceAll('{' r'appSlug' '}', appSlug.toString()).replaceAll('{' r'channel' '}', channel.toString()).replaceAll('{' r'version' '}', version.toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'apiKey',
          },{
            'type': 'apiKey',
            'name': 'session',
            'keyName': 'shukka_session',
            'where': '',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    OkResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<OkResponse, OkResponse>(rawData, 'OkResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OkResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Get artifact
  /// Presigned GET for one artifact on that version (drafts included). Does not increment hits.
  ///
  /// Parameters:
  /// * [appSlug] 
  /// * [channel] 
  /// * [version] 
  /// * [filename] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> getArtifact({ 
    required String appSlug,
    required String channel,
    required String version,
    required String filename,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/artifacts/{filename}'.replaceAll('{' r'appSlug' '}', appSlug.toString()).replaceAll('{' r'channel' '}', channel.toString()).replaceAll('{' r'version' '}', version.toString()).replaceAll('{' r'filename' '}', filename.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'apiKey',
          },{
            'type': 'apiKey',
            'name': 'session',
            'keyName': 'shukka_session',
            'where': '',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Get release metadata
  /// Read custom metadata for an exact version. Released versions are public; drafts require a session or bound app key. Explicit Authorization is validated (401/403). Returns no-store and does not increment update checks. Independent of release log.
  ///
  /// Parameters:
  /// * [appSlug] 
  /// * [channel] 
  /// * [version] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReleaseMetadata] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReleaseMetadata>> getReleaseMetadata({ 
    required String appSlug,
    required String channel,
    required String version,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/metadata'.replaceAll('{' r'appSlug' '}', appSlug.toString()).replaceAll('{' r'channel' '}', channel.toString()).replaceAll('{' r'version' '}', version.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'apiKey',
          },{
            'type': 'apiKey',
            'name': 'session',
            'keyName': 'shukka_session',
            'where': '',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReleaseMetadata? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ReleaseMetadata, ReleaseMetadata>(rawData, 'ReleaseMetadata', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReleaseMetadata>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Version hit trend
  /// Empty for drafts.
  ///
  /// Parameters:
  /// * [appSlug] 
  /// * [channel] 
  /// * [version] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [VersionTrend] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<VersionTrend>> getVersionTrend({ 
    required String appSlug,
    required String channel,
    required String version,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/trend'.replaceAll('{' r'appSlug' '}', appSlug.toString()).replaceAll('{' r'channel' '}', channel.toString()).replaceAll('{' r'version' '}', version.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'apiKey',
          },{
            'type': 'apiKey',
            'name': 'session',
            'keyName': 'shukka_session',
            'where': '',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    VersionTrend? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<VersionTrend, VersionTrend>(rawData, 'VersionTrend', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<VersionTrend>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Replace release metadata
  /// Replace the whole metadata object (16 KiB UTF-8 JSON); {} clears it. Last write wins.
  ///
  /// Parameters:
  /// * [appSlug] 
  /// * [channel] 
  /// * [version] 
  /// * [replaceReleaseMetadataRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReleaseMetadata] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReleaseMetadata>> replaceReleaseMetadata({ 
    required String appSlug,
    required String channel,
    required String version,
    required ReplaceReleaseMetadataRequest replaceReleaseMetadataRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/metadata'.replaceAll('{' r'appSlug' '}', appSlug.toString()).replaceAll('{' r'channel' '}', channel.toString()).replaceAll('{' r'version' '}', version.toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'apiKey',
          },{
            'type': 'apiKey',
            'name': 'session',
            'keyName': 'shukka_session',
            'where': '',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(replaceReleaseMetadataRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReleaseMetadata? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ReleaseMetadata, ReleaseMetadata>(rawData, 'ReleaseMetadata', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReleaseMetadata>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
