# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/emma/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-emma"
  spec.version       = Omniauth::Emma::VERSION
  spec.authors       = ["Jason Bynum"]
  spec.email         = ["jason.bynum@gmail.com"]
  spec.description   = %q{Omniauth strategy for Emma}
  spec.summary       = %q{Omniauth strategy for Emma}
  spec.homepage      = "https://github.com/jbynum/omniauth-emma"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec', '~> 2.13.0'

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.1.1'
end
