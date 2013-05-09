# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'saorin/msgpack/version'

Gem::Specification.new do |spec|
  spec.name          = 'saorin-msgpack'
  spec.version       = Saorin::MessagePack::VERSION
  spec.authors       = ['mashiro']
  spec.email         = ['mail@mashiro.org']
  spec.description   = %q{msgpack formatter for saorin}
  spec.summary       = spec.description
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'saorin', '>= 0.4.0'
  spec.add_dependency 'msgpack'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rack'
  spec.add_development_dependency 'faraday'
end
