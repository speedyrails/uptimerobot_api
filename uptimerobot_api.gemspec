# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uptimerobot_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'uptimerobot_api'
  spec.version       = UptimerobotApi::VERSION
  spec.authors       = ['Stephen Anders']
  spec.email         = ['me@stndrs.ca']

  spec.summary       = 'An api wrapper for uptimerobot'
  spec.homepage      = 'https://speedyrails.com'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem
  # that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 0.15'
  spec.add_dependency 'faraday_middleware', '~> 0.13'

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'pry', '~> 0.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'simplecov', '~> 0.16'
  spec.add_development_dependency 'webmock', '~> 3.5'
end
