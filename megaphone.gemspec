# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'megaphone/version'

Gem::Specification.new do |gem|
  gem.name          = "megaphone"
  gem.version       = Megaphone::VERSION
  gem.authors       = ['ApuX']
  gem.email         = []
  gem.description   = %q{Dynamic notification system for rails 3. It allows to assign the ability to receive messages to any model. Messages includes title, text and link.}
  gem.summary       = %q{Dynamic notification system for rails 3.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'activerecord'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'shoulda-matchers'
end
