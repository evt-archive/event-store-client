# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'event_store-client'
  s.version = '0.1.3'
  s.summary = 'Common code for the EventStore client'
  s.description = ' '

  s.authors = ['Obsidian Software, Inc']
  s.email = 'opensource@obsidianexchange.com'
  s.homepage = 'https://github.com/obsidian-btc/event-store-client'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.2.3'

  s.add_runtime_dependency 'identifier-uuid'
  s.add_runtime_dependency 'controls'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'minitest-spec-context'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'runner'
end
