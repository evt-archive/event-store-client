# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'event_store-client'
  s.summary = 'Client for EventStore'
  s.version = '0.1.0'
  s.authors = ['']
  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2'

  s.add_runtime_dependency 'identifier-uuid'
end
