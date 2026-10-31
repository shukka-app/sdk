# shukka_sdk.api.FeedApi

## Load the API package
```dart
import 'package:shukka_sdk/api.dart';
```

All URIs are relative to *https://updates.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getChannelFeed**](FeedApi.md#getchannelfeed) | **GET** /api/update/{appSlug}/{channel} | Get channel feed
[**getChannelRelease**](FeedApi.md#getchannelrelease) | **GET** /api/v1/apps/{appSlug}/channels/{channel}/release | Get channel release
[**getFeedFile**](FeedApi.md#getfeedfile) | **GET** /api/update/{appSlug}/{channel}/{filename} | Get public feed


# **getChannelFeed**
> TauriFeed getChannelFeed(appSlug, channel)

Get channel feed

Tauri returns JSON; Sparkle returns a one-item appcast.

### Example
```dart
import 'package:shukka_sdk/api.dart';

final api = ShukkaSdk().getFeedApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 

try {
    final response = api.getChannelFeed(appSlug, channel);
    print(response);
} on DioException catch (e) {
    print('Exception when calling FeedApi->getChannelFeed: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 

### Return type

[**TauriFeed**](TauriFeed.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/yaml, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelRelease**
> ChannelRelease getChannelRelease(appSlug, channel)

Get channel release

Format-neutral manifest for non-updater clients: current version, release time, and downloadable artifacts. Lists `kind: artifact` files only; each URL 302s into the feed. 404 when the channel has no released current version.

### Example
```dart
import 'package:shukka_sdk/api.dart';

final api = ShukkaSdk().getFeedApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 

try {
    final response = api.getChannelRelease(appSlug, channel);
    print(response);
} on DioException catch (e) {
    print('Exception when calling FeedApi->getChannelRelease: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 

### Return type

[**ChannelRelease**](ChannelRelease.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeedFile**
> TauriFeed getFeedFile(appSlug, channel, filename)

Get public feed

Electron yml / Tauri latest.json / Sparkle appcast; artifacts 302. Drafts are 404.

### Example
```dart
import 'package:shukka_sdk/api.dart';

final api = ShukkaSdk().getFeedApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 
final String filename = filename_example; // String | 

try {
    final response = api.getFeedFile(appSlug, channel, filename);
    print(response);
} on DioException catch (e) {
    print('Exception when calling FeedApi->getFeedFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 
 **filename** | **String**|  | 

### Return type

[**TauriFeed**](TauriFeed.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/yaml, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

