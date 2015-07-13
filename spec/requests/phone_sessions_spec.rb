require 'rails_helper'

RSpec.describe "PhoneSessions", type: :request do
  describe "GET /phone_sessions" do
    it "works! (now write some real specs)" do
      get phone_sessions_path
      expect(response).to have_http_status(200)
    end
  end
end
