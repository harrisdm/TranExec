require "rails_helper"

RSpec.describe WorkshopTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/workshop_types").to route_to("workshop_types#index")
    end

    it "routes to #new" do
      expect(:get => "/workshop_types/new").to route_to("workshop_types#new")
    end

    it "routes to #show" do
      expect(:get => "/workshop_types/1").to route_to("workshop_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/workshop_types/1/edit").to route_to("workshop_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/workshop_types").to route_to("workshop_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/workshop_types/1").to route_to("workshop_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/workshop_types/1").to route_to("workshop_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/workshop_types/1").to route_to("workshop_types#destroy", :id => "1")
    end

  end
end
