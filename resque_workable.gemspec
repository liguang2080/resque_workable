# -*- encoding: utf-8 -*-
require File.expand_path('../lib/resque_workable/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["lg2046"]
  gem.email         = ["lg2046@gmail.com"]
  gem.description   = %q{resque workable}
  gem.summary       = %q{resque workable}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "resque_workable"
  gem.require_paths = ["lib"]
  
  gem.add_dependency 'rails'
  gem.add_dependency 'resque-scheduler'
  
  gem.version       = ResqueWorkable::VERSION
end
