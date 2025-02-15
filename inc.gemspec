# frozen_string_literal: true

require_relative 'lib/inc/version'

Gem::Specification.new do |spec|
  spec.name = 'inc'
  spec.version = Inc::VERSION
  spec.authors = ['Wilson Silva']
  spec.email = ['wilson.dsigns@gmail.com']

  spec.summary = 'A lightweight framework for AI agent teams'
  spec.description = 'Build and coordinate AI agents that work together to accomplish complex tasks.'
  spec.homepage = 'https://github.com/wilsonsilva/inc'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.4.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/wilsonsilva/inc'
  spec.metadata['changelog_uri'] = 'https://github.com/wilsonsilva/inc/blob/main/CHANGELOG.md'
  spec.metadata['rubygems_mfa_required'] = 'true'

  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) || f.start_with?(*%w[bin/ spec/ .git .github Gemfile])
    end
  end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'zeitwerk', '~> 2.7'

  spec.add_development_dependency 'bundler-audit', '~> 0.9'
  spec.add_development_dependency 'guard', '~> 2.19'
  spec.add_development_dependency 'guard-bundler', '~> 3.0'
  spec.add_development_dependency 'guard-bundler-audit', '~> 0.1'
  spec.add_development_dependency 'guard-rspec', '~> 4.7'
  spec.add_development_dependency 'guard-rubocop', '~> 1.5'
  spec.add_development_dependency 'irb', '~> 1.4'
  spec.add_development_dependency 'overcommit', '~> 0.66'
  spec.add_development_dependency 'rake', '~> 13.2'
  spec.add_development_dependency 'rbs', '~> 3.8'
  spec.add_development_dependency 'rdoc', '~> 6.12'
  spec.add_development_dependency 'rspec', '~> 3.13'
  spec.add_development_dependency 'rubocop', '~> 1.72'
  spec.add_development_dependency 'rubocop-performance', '~> 1.23'
  spec.add_development_dependency 'rubocop-rake', '~> 0.6'
  spec.add_development_dependency 'rubocop-rspec', '~> 3.4'
  spec.add_development_dependency 'simplecov', '~> 0.22'
  spec.add_development_dependency 'simplecov-console', '~> 0.9'
  spec.add_development_dependency 'simplecov_json_formatter', '~> 0.1'
  spec.add_development_dependency 'steep', '~> 1.9'
  spec.add_development_dependency 'typeprof', '~> 0.30'
  spec.add_development_dependency 'yard', '~> 0.9'
  spec.add_development_dependency 'yard-junk', '~> 0.0'
  spec.add_development_dependency 'yardstick', '~> 0.9'
end
