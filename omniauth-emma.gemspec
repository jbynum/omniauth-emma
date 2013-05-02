# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/emma/version'

Gem::Specification.new do |s|
  s.name     = 'omniauth-emma'
  s.version  = OmniAuth::Emma::VERSION
  s.authors  = ['Jason Bynum']
  s.email    = ['jason.bynum@gmail.com']
  s.homepage = 'https://github.com/jbynum/omniauth-emma'
  s.summary     = %q{OmniAuth strategy for Emma}
  s.description = %q{OmniAuth strategy for Emma}
  s.license     = "MIT"

  s.rubyforge_project = "omniauth-twitter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.1.1'

  s.add_development_dependency 'rspec', '~> 2'
  s.add_development_dependency 'rake'
end
