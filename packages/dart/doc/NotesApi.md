# shukka_sdk.api.NotesApi

## Load the API package
```dart
import 'package:shukka_sdk/api.dart';
```

All URIs are relative to *https://updates.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteNote**](NotesApi.md#deletenote) | **DELETE** /api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/notes/{locale} | Delete a locale note
[**getEditorNotes**](NotesApi.md#geteditornotes) | **GET** /api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/notes | Get editor notes
[**listPublicNotes**](NotesApi.md#listpublicnotes) | **GET** /api/v1/apps/{appSlug}/channels/{channel}/notes | Get public notes
[**saveNotesConfig**](NotesApi.md#savenotesconfig) | **PUT** /api/v1/apps/{appSlug}/notes-config | Save notes config
[**upsertNote**](NotesApi.md#upsertnote) | **PUT** /api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/notes/{locale} | Upsert a locale note


# **deleteNote**
> OkResponse deleteNote(appSlug, channel, version, locale)

Delete a locale note

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getNotesApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 
final String version = version_example; // String | 
final String locale = locale_example; // String | 

try {
    final response = api.deleteNote(appSlug, channel, version, locale);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotesApi->deleteNote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 
 **version** | **String**|  | 
 **locale** | **String**|  | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEditorNotes**
> EditorNotes getEditorNotes(appSlug, channel, version)

Get editor notes

Every locale for one version.

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getNotesApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 
final String version = version_example; // String | 

try {
    final response = api.getEditorNotes(appSlug, channel, version);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotesApi->getEditorNotes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 
 **version** | **String**|  | 

### Return type

[**EditorNotes**](EditorNotes.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPublicNotes**
> PublicNotes listPublicNotes(appSlug, channel, from, to, locale)

Get public notes

Released versions only; no auth.

### Example
```dart
import 'package:shukka_sdk/api.dart';

final api = ShukkaSdk().getNotesApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 
final String from = from_example; // String | 
final String to = to_example; // String | 
final String locale = locale_example; // String | 

try {
    final response = api.listPublicNotes(appSlug, channel, from, to, locale);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotesApi->listPublicNotes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 
 **from** | **String**|  | [optional] 
 **to** | **String**|  | [optional] 
 **locale** | **String**|  | [optional] 

### Return type

[**PublicNotes**](PublicNotes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveNotesConfig**
> NotesConfigResponse saveNotesConfig(appSlug, saveNotesConfigRequest)

Save notes config

Saves release-log config without an S3 probe.

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getNotesApi();
final String appSlug = appSlug_example; // String | 
final SaveNotesConfigRequest saveNotesConfigRequest = ; // SaveNotesConfigRequest | 

try {
    final response = api.saveNotesConfig(appSlug, saveNotesConfigRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotesApi->saveNotesConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **saveNotesConfigRequest** | [**SaveNotesConfigRequest**](SaveNotesConfigRequest.md)|  | 

### Return type

[**NotesConfigResponse**](NotesConfigResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertNote**
> SavedNote upsertNote(appSlug, channel, version, locale, upsertNoteRequest)

Upsert a locale note

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getNotesApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 
final String version = version_example; // String | 
final String locale = locale_example; // String | 
final UpsertNoteRequest upsertNoteRequest = ; // UpsertNoteRequest | 

try {
    final response = api.upsertNote(appSlug, channel, version, locale, upsertNoteRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotesApi->upsertNote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 
 **version** | **String**|  | 
 **locale** | **String**|  | 
 **upsertNoteRequest** | [**UpsertNoteRequest**](UpsertNoteRequest.md)|  | 

### Return type

[**SavedNote**](SavedNote.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

