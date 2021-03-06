# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minigraphite/version'

Gem::Specification.new do |spec|
  spec.name          = "MiniGraphite"
  spec.version       = MiniGraphite::VERSION
  spec.authors       = ["Sevastianos Komianos"]
  spec.email         = ["sebastian.komianos@daliaresearch.com"]
  spec.summary       = "Simple wrapper for Graphite and Statsd"
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = "https://github.com/DaliaResearch/MiniGraphite"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "mocha"
end
