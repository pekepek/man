# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'man/version'

Gem::Specification.new do |spec|
  spec.name          = "man"
  spec.version       = Man::VERSION
  spec.authors       = ["pekepek"]
  spec.email         = ["ishihata@33i.co.jp"]

  spec.summary       = %q{You can open a manual of Ruby methods so quickly}
  spec.description   = %q{You can open a manual of Ruby methods so quickly}
  spec.homepage      = "https://github.com/pekepek/man"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = spec.files.grep(%r{^bin/}) {|f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
