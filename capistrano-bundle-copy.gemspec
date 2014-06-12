# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/bundle/copy/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-bundle-copy"
  spec.version       = Capistrano::Bundle::Copy::VERSION
  spec.authors       = ["Florian Schwab"]
  spec.email         = ["florian.schwab@sic-software.com"]
  spec.description   = %q{Package gems and upload them instead of running 'bundle install' on the server}
  spec.summary       = %q{Package gems and upload them instead of running 'bundle install' on the server}
  spec.homepage      = "https://github.com/SICSoftwareGmbH/capistrano-bundle-copy"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano',         '>= 3.0.0'
  spec.add_dependency 'capistrano-bundler', '~> 1.1.2'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'yard'
end
