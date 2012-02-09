module Groseillier
  class AdministratorsController < AdminController
    def index
      @administrators = Administrator.scoped

      respond_with @administrator
    end

    def show
      @administrator = Administrator.find(params[:id])

      respond_with @administrator
    end

    def new
      @administrator = Administrator.new

      respond_with(@administrator)
    end

    def edit
      @administrator = Administrator.find(params[:id])
    end

    def create
      @administrator = Administrator.new(params[:administrator])
      @administrator.save

      respond_with @administrator
    end

    def update
      @administrator = Administrator.find(params[:id])
      params[:administrator].delete(:password) if params[:administrator][:password].blank?
      params[:administrator].delete(:password_confirmation) if params[:administrator][:password_confirmation].blank?

      @administrator.update_attributes(params[:administrator])
      respond_with @administrator
    end

    def destroy
      @administrator = Administrator.find(params[:id])
      @administrator.destroy

      respond_with @administrator
    end
  end
end
