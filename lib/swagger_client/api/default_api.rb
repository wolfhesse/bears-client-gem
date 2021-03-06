=begin
Swagger Bearsapi (Simple)

A sample API that uses a bears=mongostore as an example to demonstrate features in the swagger-2.0 specification

OpenAPI spec version: 1.0.0
Contact: foo@example.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module SwaggerClient
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Creates a new bear in the store.  Duplicates are allowed
    # @param bear Bear to add to the store
    # @param [Hash] opts the optional parameters
    # @return [Bear]
    def add_bear(bear, opts = {})
      data, _status_code, _headers = add_bear_with_http_info(bear, opts)
      return data
    end

    # 
    # Creates a new bear in the store.  Duplicates are allowed
    # @param bear Bear to add to the store
    # @param [Hash] opts the optional parameters
    # @return [Array<(Bear, Fixnum, Hash)>] Bear data, response status code and response headers
    def add_bear_with_http_info(bear, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.add_bear ..."
      end
      # verify the required parameter 'bear' is set
      fail ArgumentError, "Missing the required parameter 'bear' when calling DefaultApi.add_bear" if bear.nil?
      # resource path
      local_var_path = "/bears".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(bear)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Bear')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#add_bear\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # deletes a single bear based on the ID supplied
    # @param id ID of bear to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_bear(id, opts = {})
      delete_bear_with_http_info(id, opts)
      return nil
    end

    # 
    # deletes a single bear based on the ID supplied
    # @param id ID of bear to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_bear_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.delete_bear ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DefaultApi.delete_bear" if id.nil?
      # resource path
      local_var_path = "/bears/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#delete_bear\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Returns all bears from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit maximum number of results to return
    # @return [Array<Bear>]
    def find_bears(opts = {})
      data, _status_code, _headers = find_bears_with_http_info(opts)
      return data
    end

    # 
    # Returns all bears from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit maximum number of results to return
    # @return [Array<(Array<Bear>, Fixnum, Hash)>] Array<Bear> data, response status code and response headers
    def find_bears_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.find_bears ..."
      end
      # resource path
      local_var_path = "/bears".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'tags'] = @api_client.build_collection_param(opts[:'tags'], :csv) if opts[:'tags']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'text/xml', 'text/html']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Bear>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#find_bears\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Returns a user based on a single ID, if the user does not have access to the bear
    # @param id ID of bear to fetch
    # @param [Hash] opts the optional parameters
    # @return [Bear]
    def find_bear_by_id(id, opts = {})
      data, _status_code, _headers = find_bear_by_id_with_http_info(id, opts)
      return data
    end

    # 
    # Returns a user based on a single ID, if the user does not have access to the bear
    # @param id ID of bear to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(Bear, Fixnum, Hash)>] Bear data, response status code and response headers
    def find_bear_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.find_bear_by_id ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DefaultApi.find_bear_by_id" if id.nil?
      # resource path
      local_var_path = "/bears/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'text/xml', 'text/html']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Bear')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#find_bear_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
