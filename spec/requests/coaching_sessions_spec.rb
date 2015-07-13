require 'rails_helper'

RSpec.describe "CoachingSessions", type: :request do
  describe "GET /coaching_sessions" do
    it "works! (now write some real specs)" do
      get coaching_sessions_path
      expect(response).to have_http_status(200)
    end
  end
end
