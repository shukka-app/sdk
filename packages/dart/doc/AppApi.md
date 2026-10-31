# shukka_sdk.api.AppApi

## Load the API package
```dart
import 'package:shukka_sdk/api.dart';
```

All URIs are relative to *https://updates.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApp**](AppApi.md#getapp) | **GET** /api/v1/apps/{appSlug} | Get app
[**updateApp**](AppApi.md#updateapp) | **PATCH** /api/v1/apps/{appSlug} | Update app settings


# **getApp**
> AppDetail getApp(appSlug)

Get app

App detail including channels, versions, and keys.

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getAppApi();
final String appSlug = appSlug_example; // String | 

try {
    final response = api.getApp(appSlug);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AppApi->getApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 

### Return type

[**AppDetail**](AppDetail.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateApp**
> AppUpdated updateApp(appSlug, appUpdateRequest)

Update app settings

Probes S3. API keys may only change `name`. Slug and storage fields are session-only; resubmitting unchanged values is allowed. Changing endpoint/bucket/prefix with existing artifacts probes the newest object at the new location.

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getAppApi();
final String appSlug = appSlug_example; // String | 
final AppUpdateRequest appUpdateRequest = ; // AppUpdateRequest | 

try {
    final response = api.updateApp(appSlug, appUpdateRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AppApi->updateApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **appUpdateRequest** | [**AppUpdateRequest**](AppUpdateRequest.md)|  | 

### Return type

[**AppUpdated**](AppUpdated.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

