require "spec_helper"

describe MediaInterestsController do
  describe "routing" do

    it "routes to #index" do
      get("/media_interests").should route_to("media_interests#index")
    end

    it "routes to #new" do
      get("/media_interests/new").should route_to("media_interests#new")
    end

    it "routes to #show" do
      get("/media_interests/1").should route_to("media_interests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/media_interests/1/edit").should route_to("media_interests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/media_interests").should route_to("media_interests#create")
    end

    it "routes to #update" do
      put("/media_interests/1").should route_to("media_interests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/media_interests/1").should route_to("media_interests#destroy", :id => "1")
    end

  end
end
