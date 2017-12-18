class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate
  private
  def authenticate
    @current_user = User.find_by_auth_token( cookies[:auth_token]) if cookies[:auth_token]
    @current_user ||= session[:user_id].present? ? User.find(session[:user_id]) : nil
  end
end
