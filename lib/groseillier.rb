require "haml"
require "sass-rails"
require "rails-i18n"
require "groseillier/engine"
require "simple-navigation"
require "devise"
require "show_for"
require "responders"
require "simple_form"
require "jquery-rails"

module Groseillier
  # Simple navigation config
  SimpleNavigation.config_file_paths << File.join(Groseillier::Engine.root, 'config', 'navigation')
end
