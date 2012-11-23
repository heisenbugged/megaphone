# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'megaphone/version'

Gem::Specification.new do |gem|
  gem.name          = "megaphone"
  gem.version       = Megaphone::VERSION
  gem.authors       = []
  gem.email         = []
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{Dynamic notification system for rails 3.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec'
end