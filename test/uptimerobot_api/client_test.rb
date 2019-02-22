# frozen_string_literal: true

require 'test_helper'

module UptimerobotApi
  class ClientTest < Minitest::Test
    def setup
      @options = { api_key: 'api_key' }
      @client = Client.new(@options)
    end

    def test_it_raises_an_error
      assert_raises ArgumentError do
        Client.new({})
      end
    end

    def test_it_initializes
      refute_nil @client
    end

    def test_it_initializes_with_a_connection
      assert_instance_of Faraday::Connection, @client.instance_variable_get(:@api)
    end

    def test_it_has_options_hash
      assert_equal @options, @client.instance_variable_get(:@options)
    end

    def test_it_has_methods
      METHODS.each do |method|
        assert @client.methods.include?(method)
      end
    end

    def test_it_makes_a_request
      body = { 'stat' => 'ok' }

      METHODS.each do |method|
        stub_api_request(method.to_s, body.to_json)
        res = @client.send(method, monitors: 123_456_789)
        assert_equal res, body
      end
    end

    def test_validate_ok
      validate = @client.send(:validate_response, 'stat' => 'ok')
      assert_nil validate
    end

    def test_validate_fail
      assert_raises Error do
        @client.send(:validate_response, 'stat' => 'fail')
      end
    end

    def stub_api_request(method, body)
      stub_request(:post, "https://api.uptimerobot.com/v2/#{method}")
        .to_return(body: body, headers: { 'Content-Type' => 'application/json' })
    end
  end
end
