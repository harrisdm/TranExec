require 'rails_helper'

RSpec.describe "PhoneSessionTypes", type: :request do
  describe "GET /phone_session_types" do
    it "works! (now write some real specs)" do
      get phone_session_types_path
      expect(response).to have_http_status(200)
    end
  end
end
