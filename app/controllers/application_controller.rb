class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate

  private
  def authenticate
    @current_user = User.find_by :id => session[:user_id] if session[:user_id]
    session[:user_id] = nil unless @current_user
  end

  def authorize_user
    if @current_user.blank?
      redirect_to root_path
    end
  end

  # def authorize_admin
  #   if @current_user.blank?
  #     redirect_to root_path
  #   elsif !@current_user.admin?
  #     redirect_to discover_path
  #   end
  # end
end
