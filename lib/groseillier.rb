require "haml"
require "sass-rails"
require "groseillier/engine"
require "simple-navigation"

module Groseillier
  # Simple navigation config
  SimpleNavigation.config_file_paths << File.join(Groseillier::Engine.root, 'config', 'navigation')
end
