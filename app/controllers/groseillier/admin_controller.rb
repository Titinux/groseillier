module Groseillier
  class AdminController < ApplicationController
    before_filter :authenticate_administrator!

    responders :flash
    respond_to :html

    layout 'groseillier/admin'
    helper 'groseillier/groseillier'

    protect_from_forgery
  end
end
