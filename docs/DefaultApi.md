# SwaggerClient::DefaultApi

All URIs are relative to *http://bearsapi.wolfspool.chickenkiller.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_bear**](DefaultApi.md#add_bear) | **POST** /bears | 
[**delete_bear**](DefaultApi.md#delete_bear) | **DELETE** /bears/{id} | 
[**find_bears**](DefaultApi.md#find_bears) | **GET** /bears | 
[**find_bear_by_id**](DefaultApi.md#find_bear_by_id) | **GET** /bears/{id} | 


# **add_bear**
> Bear add_bear(bear)



Creates a new bear in the store.  Duplicates are allowed

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DefaultApi.new

bear = SwaggerClient::NewBear.new # NewBear | Bear to add to the store


begin
  result = api_instance.add_bear(bear)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->add_bear: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bear** | [**NewBear**](NewBear.md)| Bear to add to the store | 

### Return type

[**Bear**](Bear.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_bear**
> delete_bear(id)



deletes a single bear based on the ID supplied

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DefaultApi.new

id = "id_example" # String | ID of bear to delete


begin
  api_instance.delete_bear(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->delete_bear: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of bear to delete | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_bears**
> Array&lt;Bear&gt; find_bears(opts)



Returns all bears from the system that the user has access to

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DefaultApi.new

opts = { 
  tags: ["tags_example"], # Array<String> | tags to filter by
  limit: 56 # Integer | maximum number of results to return
}

begin
  result = api_instance.find_bears(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->find_bears: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| maximum number of results to return | [optional] 

### Return type

[**Array&lt;Bear&gt;**](Bear.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, text/xml, text/html



# **find_bear_by_id**
> Bear find_bear_by_id(id)



Returns a user based on a single ID, if the user does not have access to the bear

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DefaultApi.new

id = "id_example" # String | ID of bear to fetch


begin
  result = api_instance.find_bear_by_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->find_bear_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of bear to fetch | 

### Return type

[**Bear**](Bear.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, text/xml, text/html



