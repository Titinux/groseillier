$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "groseillier/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "groseillier"
  s.version     = Groseillier::VERSION
  s.authors     = %w("Jérémie Horhant")
  s.email       = %w(jeremie.horhant@titinux.net)
  s.homepage    = "https://github.com/Titinux/groseillier/"
  s.summary     = "Core of the Groseillier project."
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + %w(AGPLv3 Rakefile README.rdoc)
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.0"
  s.add_dependency "haml"
  s.add_dependency "simple-navigation"

  s.add_development_dependency "sass-rails"
  s.add_development_dependency "coffee-rails"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
end
