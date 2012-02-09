module Groseillier
  class AdminController < ApplicationController
    before_filter :authenticate_administrator!
    before_filter :set_locale

    responders :flash
    respond_to :html

    layout 'groseillier/admin'
    helper 'groseillier/groseillier'

    protect_from_forgery

    private

    def set_locale
      if administrator_signed_in? and not current_administrator.preferred_locale.blank?
        I18n.locale = current_administrator.preferred_locale
      end
    end
  end
end
