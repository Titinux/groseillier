module Groseillier
  module Devise
    class FailureApp < ::Devise::FailureApp
      def self.default_url_options(*args)
        if defined?(AdminController)
          AdminController.default_url_options(*args)
        else
          {}
        end
      end
    end
  end
end
