# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth_bigcartel/version'

  Gem::Specification.new do |spec|
    spec.authors       = ['Andrew Yaremchuk']
    spec.email         = ['andrew.yaremchuk@kitcrm.com']
    spec.description   = 'OmniAuth strategy for Bigcartel'
    spec.summary       = 'OmniAuth strategy for Bigcartel'
    spec.homepage      = 'https://github.com/aYaremchuk/omniauth-bigcartel'

    spec.files         = `git ls-files -z`.split("\x0")
    spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
    spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
    spec.name          = 'omniauth-bigcartel'
    spec.require_paths = ['lib']
    spec.version       = Omniauth::Bigcartel::VERSION

    spec.add_dependency 'omniauth', '~> 1'
    spec.add_dependency 'omniauth-oauth2', '~> 1'
end
