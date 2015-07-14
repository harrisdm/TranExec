require 'rails_helper'

RSpec.describe BackboneController, type: :controller do

  describe "GET #clients" do
    it "returns http success" do
      get :clients
      expect(response).to have_http_status(:success)
    end
  end

end
