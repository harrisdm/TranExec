require 'rails_helper'

RSpec.describe "AppointmentBlocks", type: :request do
  describe "GET /appointment_blocks" do
    it "works! (now write some real specs)" do
      get appointment_blocks_path
      expect(response).to have_http_status(200)
    end
  end
end
