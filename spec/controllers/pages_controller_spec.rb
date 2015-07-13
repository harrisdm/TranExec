require 'rails_helper'

RSpec.describe PagesController, type: :controller do

<<<<<<< HEAD
  describe "GET #landing" do
    it "returns http success" do
      get :landing
=======
  describe "GET #home" do
    it "returns http success" do
      get :home
>>>>>>> 4e6d214e1d215da8f92f2c8ef54d721ac3eef23f
      expect(response).to have_http_status(:success)
    end
  end

end
