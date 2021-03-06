# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'event_store-client'
  s.version = '0.2.1.0'
  s.summary = 'Common code for the EventStore client'
  s.description = ' '

  s.authors = ['The Eventide Project']
  s.email = 'opensource@eventide-project.org'
  s.homepage = 'https://github.com/eventide-project/event-store-client'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.3.3'

  s.add_runtime_dependency 'identifier-uuid'

  s.add_development_dependency 'test_bench'
end
