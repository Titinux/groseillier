module Groseillier
  class Engine < ::Rails::Engine
    isolate_namespace Groseillier

    config.generators do |g|
      g.template_engine     :haml
      g.test_framework      :rspec, :fixture => true
      g.integration_tool    :rspec
      g.stylesheet_engine   :sass
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end
  end
end
