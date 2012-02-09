require "spec_helper"

describe Groseillier::AdministratorsController do
  describe "routing" do
    it "routes to #index" do
      get("/administrators").should route_to("groseillier/administrators#index")
    end

    it "routes to #new" do
      get("/administrators/new").should route_to("administrators#new")
    end

    it "routes to #show" do
      get("/administrators/42").should route_to("administrators#show", :id => "42")
    end

    it "routes to #edit" do
      get("/administrators/42/edit").should route_to("administrators#edit", :id => "42")
    end

    it "routes to #create" do
      post("/administrators").should route_to("administrators#create")
    end

    it "routes to #update" do
      put("/administrators/42").should route_to("administrators#update", :id => "42")
    end

    it "routes to #destroy" do
      delete("/administrators/42").should route_to("administrators#destroy", :id => "42")
    end
  end
end
