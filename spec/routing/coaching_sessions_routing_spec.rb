require "rails_helper"

RSpec.describe CoachingSessionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/coaching_sessions").to route_to("coaching_sessions#index")
    end

    it "routes to #new" do
      expect(:get => "/coaching_sessions/new").to route_to("coaching_sessions#new")
    end

    it "routes to #show" do
      expect(:get => "/coaching_sessions/1").to route_to("coaching_sessions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/coaching_sessions/1/edit").to route_to("coaching_sessions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/coaching_sessions").to route_to("coaching_sessions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/coaching_sessions/1").to route_to("coaching_sessions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/coaching_sessions/1").to route_to("coaching_sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/coaching_sessions/1").to route_to("coaching_sessions#destroy", :id => "1")
    end

  end
end
