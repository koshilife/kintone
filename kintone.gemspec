lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kintone/version'

Gem::Specification.new do |spec|
  spec.name          = 'kintone-oauth-extension'
  spec.version       = Kintone::VERSION
  spec.authors       = ['Kenji Koshikawa']
  spec.email         = ['koshikawa2009@gmail.com']
  spec.summary       = 'kintone API client for Ruby.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/koshilife/kintone'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/koshilife/kintone'
  spec.metadata['changelog_uri'] = "#{spec.metadata['source_code_uri']}/blob/master/CHANGELOG.md"
  spec.metadata['documentation_uri'] = "https://www.rubydoc.info/gems/kintone-oauth-extension/#{spec.version}"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'faraday', '>=1.0.1'
  spec.add_runtime_dependency 'faraday_middleware', '>=1.0.0'
  spec.add_runtime_dependency 'oauth2', '>=1.4.4'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'codecov'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-parameterized'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'webmock'
end
