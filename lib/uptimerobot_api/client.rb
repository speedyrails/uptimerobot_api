# frozen_string_literal: true

module UptimerobotApi
  # Uptimerobot client
  class Client
    METHODS.each do |method, endpoint|
      define_method(method) do |arg|
        request(endpoint, arg || {})
      end
    end

    def initialize(options = {})
      @options = options
      raise ArgumentError, 'an api_key is required' unless @options[:api_key]

      @api = Connection.api
    end

    private

    def request(endpoint, params = {})
      params[:api_key] = @options[:api_key]
      params[:format] = 'json'
      response = @api.post(endpoint, params)

      res = response.body
      validate_response(res)
      res
    end

    def validate_response(res)
      return if res['stat'] == 'ok'

      raise Error.new(res), "Invalid response: #{res}"
    end
  end
end
