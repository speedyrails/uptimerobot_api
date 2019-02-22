# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'simplecov'
SimpleCov.start

require 'uptimerobot_api'
require 'json'
require 'pry'
require 'minitest/autorun'
require 'webmock/minitest'
