module Groseillier
  class AddonsController < AdminController
    def index
      @addons = Groseillier::Addons.registered

      respond_with(@addons)
    end
  end
end
