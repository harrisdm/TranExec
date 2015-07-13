require "rails_helper"

RSpec.describe PhoneSessionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/phone_sessions").to route_to("phone_sessions#index")
    end

    it "routes to #new" do
      expect(:get => "/phone_sessions/new").to route_to("phone_sessions#new")
    end

    it "routes to #show" do
      expect(:get => "/phone_sessions/1").to route_to("phone_sessions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/phone_sessions/1/edit").to route_to("phone_sessions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/phone_sessions").to route_to("phone_sessions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/phone_sessions/1").to route_to("phone_sessions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/phone_sessions/1").to route_to("phone_sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/phone_sessions/1").to route_to("phone_sessions#destroy", :id => "1")
    end

  end
end
