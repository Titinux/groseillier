module Groseillier
  class Addon
    attr_accessor :engine, :version

    def self.register(&block)
      yield(addon = self.new)

      # Add the new addon to the collection of registered addons
      ::Groseillier::Addons.registered << addon
    end

    # Return the name of the addon
    def name
      engine.engine_name
    end

    # Returns the internationalized version of the title
    def title
      translate('title')
    end

    # Returns the internationalized version of the description
    def description
      translate('description')
    end

    def menu
      translate('menu')
    end

    def translate(property)
      ::I18n.translate(['groseillier', 'addons', name, property].join('.'))
    end
  end
end
