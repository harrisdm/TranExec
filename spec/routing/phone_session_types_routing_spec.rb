require "rails_helper"

RSpec.describe PhoneSessionTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/phone_session_types").to route_to("phone_session_types#index")
    end

    it "routes to #new" do
      expect(:get => "/phone_session_types/new").to route_to("phone_session_types#new")
    end

    it "routes to #show" do
      expect(:get => "/phone_session_types/1").to route_to("phone_session_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/phone_session_types/1/edit").to route_to("phone_session_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/phone_session_types").to route_to("phone_session_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/phone_session_types/1").to route_to("phone_session_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/phone_session_types/1").to route_to("phone_session_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/phone_session_types/1").to route_to("phone_session_types#destroy", :id => "1")
    end

  end
end
