# shukka_sdk.api.VersionsApi

## Load the API package
```dart
import 'package:shukka_sdk/api.dart';
```

All URIs are relative to *https://updates.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteVersion**](VersionsApi.md#deleteversion) | **DELETE** /api/v1/apps/{appSlug}/channels/{channel}/versions/{version} | Delete a version
[**getArtifact**](VersionsApi.md#getartifact) | **GET** /api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/artifacts/{filename} | Get artifact
[**getReleaseMetadata**](VersionsApi.md#getreleasemetadata) | **GET** /api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/metadata | Get release metadata
[**getVersionTrend**](VersionsApi.md#getversiontrend) | **GET** /api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/trend | Version hit trend
[**replaceReleaseMetadata**](VersionsApi.md#replacereleasemetadata) | **PUT** /api/v1/apps/{appSlug}/channels/{channel}/versions/{version}/metadata | Replace release metadata


# **deleteVersion**
> OkResponse deleteVersion(appSlug, channel, version)

Delete a version

Deletes the version and its objects.

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getVersionsApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 
final String version = version_example; // String | 

try {
    final response = api.deleteVersion(appSlug, channel, version);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VersionsApi->deleteVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 
 **version** | **String**|  | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArtifact**
> getArtifact(appSlug, channel, version, filename)

Get artifact

Presigned GET for one artifact on that version (drafts included). Does not increment hits.

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getVersionsApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 
final String version = version_example; // String | 
final String filename = filename_example; // String | 

try {
    api.getArtifact(appSlug, channel, version, filename);
} on DioException catch (e) {
    print('Exception when calling VersionsApi->getArtifact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 
 **version** | **String**|  | 
 **filename** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReleaseMetadata**
> ReleaseMetadata getReleaseMetadata(appSlug, channel, version)

Get release metadata

Read custom metadata for an exact version. Released versions are public; drafts require a session or bound app key. Explicit Authorization is validated (401/403). Returns no-store and does not increment update checks. Independent of release log.

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getVersionsApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 
final String version = version_example; // String | 

try {
    final response = api.getReleaseMetadata(appSlug, channel, version);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VersionsApi->getReleaseMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 
 **version** | **String**|  | 

### Return type

[**ReleaseMetadata**](ReleaseMetadata.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVersionTrend**
> VersionTrend getVersionTrend(appSlug, channel, version)

Version hit trend

Empty for drafts.

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getVersionsApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 
final String version = version_example; // String | 

try {
    final response = api.getVersionTrend(appSlug, channel, version);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VersionsApi->getVersionTrend: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 
 **version** | **String**|  | 

### Return type

[**VersionTrend**](VersionTrend.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replaceReleaseMetadata**
> ReleaseMetadata replaceReleaseMetadata(appSlug, channel, version, replaceReleaseMetadataRequest)

Replace release metadata

Replace the whole metadata object (16 KiB UTF-8 JSON); {} clears it. Last write wins.

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getVersionsApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 
final String version = version_example; // String | 
final ReplaceReleaseMetadataRequest replaceReleaseMetadataRequest = ; // ReplaceReleaseMetadataRequest | 

try {
    final response = api.replaceReleaseMetadata(appSlug, channel, version, replaceReleaseMetadataRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VersionsApi->replaceReleaseMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 
 **version** | **String**|  | 
 **replaceReleaseMetadataRequest** | [**ReplaceReleaseMetadataRequest**](ReplaceReleaseMetadataRequest.md)|  | 

### Return type

[**ReleaseMetadata**](ReleaseMetadata.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

