# frozen_string_literal: true

module UptimerobotApi
  # Uptime Robot API Error class
  class Error < StandardError
    attr_reader :data

    def initialize(data = {})
      super
      @data = data
    end
  end
end
