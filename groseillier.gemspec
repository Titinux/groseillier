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
  s.add_dependency "rails-i18n"
  s.add_dependency "haml"
  s.add_dependency "simple-navigation"
  s.add_dependency "devise"
  s.add_dependency "show_for"
  s.add_dependency "responders"
  s.add_dependency "simple_form", "~>2.0.0.rc"
  s.add_dependency "sass-rails"
  s.add_dependency "coffee-rails"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl_rails"
end
