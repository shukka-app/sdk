# shukka_sdk.api.ChannelsApi

## Load the API package
```dart
import 'package:shukka_sdk/api.dart';
```

All URIs are relative to *https://updates.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createChannel**](ChannelsApi.md#createchannel) | **POST** /api/v1/apps/{appSlug}/channels | Create a channel
[**deleteChannel**](ChannelsApi.md#deletechannel) | **DELETE** /api/v1/apps/{appSlug}/channels/{channel} | Delete a channel
[**getChannelTrend**](ChannelsApi.md#getchanneltrend) | **GET** /api/v1/apps/{appSlug}/channels/{channel}/trend | Channel hit trend
[**listChannels**](ChannelsApi.md#listchannels) | **GET** /api/v1/apps/{appSlug}/channels | List channels
[**setCurrentVersion**](ChannelsApi.md#setcurrentversion) | **PATCH** /api/v1/apps/{appSlug}/channels/{channel} | Set current version


# **createChannel**
> ChannelCreated createChannel(appSlug, createChannelRequest)

Create a channel

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getChannelsApi();
final String appSlug = appSlug_example; // String | 
final CreateChannelRequest createChannelRequest = ; // CreateChannelRequest | 

try {
    final response = api.createChannel(appSlug, createChannelRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ChannelsApi->createChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **createChannelRequest** | [**CreateChannelRequest**](CreateChannelRequest.md)|  | 

### Return type

[**ChannelCreated**](ChannelCreated.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChannel**
> OkResponse deleteChannel(appSlug, channel)

Delete a channel

Deletes the channel and its objects.

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getChannelsApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 

try {
    final response = api.deleteChannel(appSlug, channel);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ChannelsApi->deleteChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelTrend**
> ChannelTrend getChannelTrend(appSlug, channel, range)

Channel hit trend

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getChannelsApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 
final int range = 56; // int | 

try {
    final response = api.getChannelTrend(appSlug, channel, range);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ChannelsApi->getChannelTrend: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 
 **range** | **int**|  | [optional] 

### Return type

[**ChannelTrend**](ChannelTrend.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listChannels**
> ChannelList listChannels(appSlug)

List channels

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getChannelsApi();
final String appSlug = appSlug_example; // String | 

try {
    final response = api.listChannels(appSlug);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ChannelsApi->listChannels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 

### Return type

[**ChannelList**](ChannelList.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setCurrentVersion**
> OkResponse setCurrentVersion(appSlug, channel, setCurrentVersionRequest)

Set current version

Promote a draft (`currentVersion`) or roll back to a released version.

### Example
```dart
import 'package:shukka_sdk/api.dart';
// TODO Configure API key authorization: session
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('session').apiKeyPrefix = 'Bearer';

final api = ShukkaSdk().getChannelsApi();
final String appSlug = appSlug_example; // String | 
final String channel = channel_example; // String | 
final SetCurrentVersionRequest setCurrentVersionRequest = ; // SetCurrentVersionRequest | 

try {
    final response = api.setCurrentVersion(appSlug, channel, setCurrentVersionRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ChannelsApi->setCurrentVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 
 **channel** | **String**|  | 
 **setCurrentVersionRequest** | [**SetCurrentVersionRequest**](SetCurrentVersionRequest.md)|  | 

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [session](../README.md#session)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

