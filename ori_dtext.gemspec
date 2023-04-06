# frozen_string_literal: true

require_relative 'lib/dtext/version'

Gem::Specification.new do |spec|
  spec.name = 'ori_dtext'
  spec.version = DText::VERSION
  spec.authors = ['lunaisnotaboy', 'r888888888', 'evazion']
  spec.email = ['her@mint.lgbt']

  spec.summary = 'A fork of the Danbooru DText parser for Ori'
  spec.homepage = 'https://github.com/lunaisnotaboy/ori_dtext'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'
  spec.extensions = ['ext/dtext/extconf.rb']

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.files = Dir['lib/**/*']

  spec.add_development_dependency 'benchmark-ips', '~> 2.10'
  spec.add_development_dependency 'cgi', '~> 0.3'
  spec.add_development_dependency 'minitest', '~> 5.15'
  spec.add_development_dependency 'nokogiri', '~> 1'
  spec.add_development_dependency 'rake', '~> 13'
  spec.add_development_dependency 'rake-compiler', '~> 1.1'
end
