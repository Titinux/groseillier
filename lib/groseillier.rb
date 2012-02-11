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
require "preferences"

module Groseillier
  autoload :Locale, 'groseillier/locale'
  autoload :Addon,  'groseillier/addon'
  autoload :Addons, 'groseillier/addons'

  # Simple navigation config
  SimpleNavigation.config_file_paths << File.join(Groseillier::Engine.root, 'config', 'navigation')
end
