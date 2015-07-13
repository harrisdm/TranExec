require 'rails_helper'

RSpec.describe "WorkshopTypes", type: :request do
  describe "GET /workshop_types" do
    it "works! (now write some real specs)" do
      get workshop_types_path
      expect(response).to have_http_status(200)
    end
  end
end
