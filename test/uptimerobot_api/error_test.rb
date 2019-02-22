# frozen_string_literal: true

require 'test_helper'

module UptimerobotApi
  class ErrorTest < Minitest::Test
    def setup
      @data = { error: 'error' }
      @error = UptimerobotApi::Error.new(@data)
    end

    def test_that_it_initializes
      refute_nil @error
    end

    def test_it_has_data
      assert_equal @error.data, @data
    end
  end
end
