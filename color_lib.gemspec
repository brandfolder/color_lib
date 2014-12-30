# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'color_lib/version'

Gem::Specification.new do |spec|
  spec.name        = "color_lib"
  spec.version     = ColorLib::VERSION
  spec.authors     = ["Jason Waldrip"]
  spec.email       = ["jason@waldrip.net"]
  spec.summary     = %q{A lib for colors}
  spec.description = %q{A lib for working with colors in ruby}
  spec.homepage    = "https://github.com/brandfolder/color_lib"
  spec.license     = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 10.0"
end
