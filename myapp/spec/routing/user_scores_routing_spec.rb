require "spec_helper"

describe UserScoresController do
  describe "routing" do

    it "routes to #index" do
      get("/user_scores").should route_to("user_scores#index")
    end

    it "routes to #new" do
      get("/user_scores/new").should route_to("user_scores#new")
    end

    it "routes to #show" do
      get("/user_scores/1").should route_to("user_scores#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_scores/1/edit").should route_to("user_scores#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_scores").should route_to("user_scores#create")
    end

    it "routes to #update" do
      put("/user_scores/1").should route_to("user_scores#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_scores/1").should route_to("user_scores#destroy", :id => "1")
    end

  end
end
