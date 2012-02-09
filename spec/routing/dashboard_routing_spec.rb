require "spec_helper"

describe Groseillier::DashboardController do
  describe "routing" do

    it "routes to #show" do
      { :get => "/" }.should route_to("dashboard#show")
    end
  end
end
