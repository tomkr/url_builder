# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'url_builder/version'

Gem::Specification.new do |spec|
  spec.name          = 'url_builder'
  spec.version       = UrlBuilder::VERSION
  spec.authors       = ['Tom Kruijsen']
  spec.email         = ['tom@tomkruijsen.nl']

  spec.summary       = 'The easy way to build urls'
  spec.homepage      = 'https://github.com/tomkr/url_builder'
  spec.license       = 'MIT'

  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.49'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.5'
end
