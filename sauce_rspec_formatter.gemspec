require_relative 'lib/sauce_rspec_formatter/version'

# rubocop:disable Style/SpaceAroundOperators

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 2.2.3'

  spec.name          = 'sauce_rspec_formatter'
  spec.version       = SauceRSpecFormatter::VERSION
  spec.date          = SauceRSpecFormatter::DATE
  spec.license       = 'http://www.apache.org/licenses/LICENSE-2.0.txt'
  spec.description   = spec.summary = 'Sauce rspec formatter (use with sauce_rspec)'
  spec.description   += '.' # avoid identical warning
  spec.authors       = spec.email = ['code@bootstraponline.com']
  spec.homepage      = 'https://github.com/bootstraponline/sauce_rspec_formatter'
  spec.require_paths = ['lib']

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.add_runtime_dependency 'rspec', '>= 3.3.0'
  spec.add_runtime_dependency 'sauce_rspec', '>= 0.0.2'

  spec.add_development_dependency 'appium_thor', '~> 1.0.1'
  spec.add_development_dependency 'coveralls', '~> 0.8.3'
  spec.add_development_dependency 'pry', '~> 0.10.2'
  spec.add_development_dependency 'sauce_platforms', '~> 2.0.0'
  spec.add_development_dependency 'bundler', '~> 1.10.6'
  spec.add_development_dependency 'rake', '~> 10.4.2'
  spec.add_development_dependency 'rubocop', '~> 0.34.2'
end
