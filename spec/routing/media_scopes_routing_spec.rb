require "spec_helper"

describe MediaScopesController do
  describe "routing" do

    it "routes to #index" do
      get("/media_scopes").should route_to("media_scopes#index")
    end

    it "routes to #new" do
      get("/media_scopes/new").should route_to("media_scopes#new")
    end

    it "routes to #show" do
      get("/media_scopes/1").should route_to("media_scopes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/media_scopes/1/edit").should route_to("media_scopes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/media_scopes").should route_to("media_scopes#create")
    end

    it "routes to #update" do
      put("/media_scopes/1").should route_to("media_scopes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/media_scopes/1").should route_to("media_scopes#destroy", :id => "1")
    end

  end
end
