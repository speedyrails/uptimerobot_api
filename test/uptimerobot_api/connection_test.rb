# frozen_string_literal: true

require 'test_helper'

module UptimerobotApi
  class ErrorTest < Minitest::Test
    def test_api
      assert_instance_of Faraday::Connection, UptimerobotApi::Connection.api
    end
  end
end
