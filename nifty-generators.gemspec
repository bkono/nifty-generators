Gem::Specification.new do |s|
  s.name        = "kono-nifty-generators"
  s.version     = "0.0.4"
  s.author      = "Bryan Konowitz"
  s.email       = "bryan@solvedbycode.com"
  s.homepage    = "http://github.com/bkonowitz/nifty-generators"
  s.summary     = "A fork of the amazing Nifty Generators by Ryan Bates."
  s.description = "This is a fork of the amazing Nifty Generators by Ryan Bates. Included in this version are various updates to provide a smoother workflow on core, code generation-ready features. Additions such as Mongoid support, and ajax scaffolding generators are just some of the changes being baked inside."

  s.files        = Dir["{lib,test,features,rails_generators}/**/*", "[A-Z]*"]
  s.require_path = "lib"

  s.add_development_dependency 'rspec-rails', '~> 2.0.1'
  s.add_development_dependency 'cucumber', '~> 0.9.2'
  s.add_development_dependency 'rails', '~> 3.0.0'
  s.add_development_dependency 'mocha', '~> 0.9.8'
  s.add_development_dependency 'bcrypt-ruby', '~> 2.1.2'
  s.add_development_dependency 'sqlite3-ruby', '~> 1.3.1'

  s.rubyforge_project = s.name
  s.required_rubygems_version = ">= 1.3.4"
end
