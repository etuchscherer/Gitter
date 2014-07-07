# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gitter/version'

Gem::Specification.new do |spec|
  spec.name          = "gitter"
  spec.version       = Gitter::VERSION
  spec.authors       = ["eric@tuchscherer.me"]
  spec.email         = ["eric@tuchscherer.me"]
  spec.summary       = %q{A gem that interfaces with git on the command line}
  spec.description   = %q{A gem that interfaces with git on the command line}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
