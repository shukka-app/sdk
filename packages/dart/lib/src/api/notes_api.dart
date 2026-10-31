//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:shukka_sdk/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:shukka_sdk/src/model/editor_notes.dart';
import 'package:shukka_sdk/src/model/notes_config_response.dart';
import 'package:shukka_sdk/src/model/ok_response.dart';
import 'package:shukka_sdk/src/model/public_notes.dart';
import 'package:shukka_sdk/src/model/save_notes_config_request.dart';
import 'package:shukka_sdk/src/model/saved_note.dart';
import 'package:shukka_sdk/src/model/upsert_note_request.dart';

class NotesApi {

  final Dio _dio;

  const NotesApi(this._dio);

  /// Delete a locale note
  /// 
  ///
  /// Parameters:
  /// * [appSlug] 
  /// * [channel] 
  /// * [version] 
  /// * [locale] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OkResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OkResponse>> deleteNote({ 
    required String appSlug,
    required String channel,
    required String version,
    required String locale,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/notes/{locale}'.replaceAll('{' r'appSlug' '}', appSlug.toString()).replaceAll('{' r'channel' '}', channel.toString()).replaceAll('{' r'version' '}', version.toString()).replaceAll('{' r'locale' '}', locale.toString());
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

  /// Get editor notes
  /// Every locale for one version.
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
  /// Returns a [Future] containing a [Response] with a [EditorNotes] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EditorNotes>> getEditorNotes({ 
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
    final _path = r'/api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/notes'.replaceAll('{' r'appSlug' '}', appSlug.toString()).replaceAll('{' r'channel' '}', channel.toString()).replaceAll('{' r'version' '}', version.toString());
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

    EditorNotes? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<EditorNotes, EditorNotes>(rawData, 'EditorNotes', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EditorNotes>(
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

  /// Get public notes
  /// Released versions only; no auth.
  ///
  /// Parameters:
  /// * [appSlug] 
  /// * [channel] 
  /// * [from] 
  /// * [to] 
  /// * [locale] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PublicNotes] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PublicNotes>> listPublicNotes({ 
    required String appSlug,
    required String channel,
    String? from,
    String? to,
    String? locale,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/apps/{appSlug}/channels/{channel}/notes'.replaceAll('{' r'appSlug' '}', appSlug.toString()).replaceAll('{' r'channel' '}', channel.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (from != null) r'from': from,
      if (to != null) r'to': to,
      if (locale != null) r'locale': locale,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PublicNotes? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PublicNotes, PublicNotes>(rawData, 'PublicNotes', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PublicNotes>(
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

  /// Save notes config
  /// Saves release-log config without an S3 probe.
  ///
  /// Parameters:
  /// * [appSlug] 
  /// * [saveNotesConfigRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [NotesConfigResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<NotesConfigResponse>> saveNotesConfig({ 
    required String appSlug,
    required SaveNotesConfigRequest saveNotesConfigRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/apps/{appSlug}/notes-config'.replaceAll('{' r'appSlug' '}', appSlug.toString());
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
      _bodyData = jsonEncode(saveNotesConfigRequest);

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

    NotesConfigResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<NotesConfigResponse, NotesConfigResponse>(rawData, 'NotesConfigResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<NotesConfigResponse>(
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

  /// Upsert a locale note
  /// 
  ///
  /// Parameters:
  /// * [appSlug] 
  /// * [channel] 
  /// * [version] 
  /// * [locale] 
  /// * [upsertNoteRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SavedNote] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SavedNote>> upsertNote({ 
    required String appSlug,
    required String channel,
    required String version,
    required String locale,
    required UpsertNoteRequest upsertNoteRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/notes/{locale}'.replaceAll('{' r'appSlug' '}', appSlug.toString()).replaceAll('{' r'channel' '}', channel.toString()).replaceAll('{' r'version' '}', version.toString()).replaceAll('{' r'locale' '}', locale.toString());
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
      _bodyData = jsonEncode(upsertNoteRequest);

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

    SavedNote? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SavedNote, SavedNote>(rawData, 'SavedNote', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SavedNote>(
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
