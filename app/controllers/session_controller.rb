class SessionController < ApplicationController
  before_action :authorize_user, only: [:destroy]

  def new
  end

  def create
    user = User.find_by :name => params[:username]
    if user.present?
      session[:user_id] = user.id
      redirect_to projects_path
    else
      redirect_to admin_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
