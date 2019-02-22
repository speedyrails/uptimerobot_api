# frozen_string_literal: true

module UptimerobotApi
  # Uptimerobot connection
  class Connection
    URL = 'https://api.uptimerobot.com/v2'

    # Returns a faraday object for connecting
    # to the uptimerobot api
    def self.api
      Faraday.new(url: URL) do |f|
        f.response :json, content_type: /\bjson$/
        f.request :url_encoded
        f.adapter :net_http
      end
    end
  end
end
