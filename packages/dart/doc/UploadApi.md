# shukka_sdk.api.UploadApi

## Load the API package
```dart
import 'package:shukka_sdk/api.dart';
```

All URIs are relative to *https://updates.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finalizeUpload**](UploadApi.md#finalizeupload) | **POST** /api/v1/upload/finalize | Finalize upload
[**initUpload**](UploadApi.md#initupload) | **POST** /api/v1/upload/init | Start upload


# **finalizeUpload**
> UploadFinalizeResponse finalizeUpload(finalizeUploadRequest)

Finalize upload

Creates a version. Default is draft; `release: true` goes live.

### Example
```dart
import 'package:shukka_sdk/api.dart';

final api = ShukkaSdk().getUploadApi();
final FinalizeUploadRequest finalizeUploadRequest = ; // FinalizeUploadRequest | 

try {
    final response = api.finalizeUpload(finalizeUploadRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UploadApi->finalizeUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **finalizeUploadRequest** | [**FinalizeUploadRequest**](FinalizeUploadRequest.md)|  | 

### Return type

[**UploadFinalizeResponse**](UploadFinalizeResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initUpload**
> UploadInitResponse initUpload(initUploadRequest)

Start upload

Start a pending upload. Electron requires at least one `.yml`; Tauri requires `latest.json` and/or artifact+`.sig` pairs; Sparkle requires `appcast.xml` and/or archive+`.sig` (see spec).

### Example
```dart
import 'package:shukka_sdk/api.dart';

final api = ShukkaSdk().getUploadApi();
final InitUploadRequest initUploadRequest = ; // InitUploadRequest | 

try {
    final response = api.initUpload(initUploadRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UploadApi->initUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **initUploadRequest** | [**InitUploadRequest**](InitUploadRequest.md)|  | 

### Return type

[**UploadInitResponse**](UploadInitResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

