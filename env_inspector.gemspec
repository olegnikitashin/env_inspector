# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "env_inspector/version"

Gem::Specification.new do |spec|
  spec.name          = "env_inspector"
  spec.version       = EnvInspector::VERSION
  spec.authors       = ["Oleg Nikitashin"]
  spec.email         = ["olegnikitashin@gmail.com"]

  spec.summary       = %q{Don't forget to setup your ENVs.}
  spec.description   = %q{Gem checks if all of required ENVs are setup}
  spec.homepage      = "https://github.com/olegnikitashin/env_inspector"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
