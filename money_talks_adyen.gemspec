# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'money_talks_adyen/version'

Gem::Specification.new do |gem|
  gem.name          = "money_talks_adyen"
  gem.version       = MoneyTalksAdyen::VERSION
  gem.authors       = ['Felipe Jordão A.P. Mattosinho']
  gem.email         = ['felipe.japm@gmail.com']
  gem.description   = %q{Handle payment gateways with a simple interface}
  gem.summary       = %q{Hook up your provider and start paying}
  gem.homepage      = ""

  gem.files         = Dir['{bin,lib,test,spec}/**/*'] + ['LICENSE.txt', 'Rakefile', 'Gemfile', 'README.md']
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }

  gem.require_paths = ['lib']

  gem.add_dependency 'savon', '= 2.3.2'
  gem.add_dependency 'activesupport'

end
