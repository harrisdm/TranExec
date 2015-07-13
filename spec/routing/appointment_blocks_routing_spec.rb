require "rails_helper"

RSpec.describe AppointmentBlocksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/appointment_blocks").to route_to("appointment_blocks#index")
    end

    it "routes to #new" do
      expect(:get => "/appointment_blocks/new").to route_to("appointment_blocks#new")
    end

    it "routes to #show" do
      expect(:get => "/appointment_blocks/1").to route_to("appointment_blocks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/appointment_blocks/1/edit").to route_to("appointment_blocks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/appointment_blocks").to route_to("appointment_blocks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/appointment_blocks/1").to route_to("appointment_blocks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/appointment_blocks/1").to route_to("appointment_blocks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/appointment_blocks/1").to route_to("appointment_blocks#destroy", :id => "1")
    end

  end
end
