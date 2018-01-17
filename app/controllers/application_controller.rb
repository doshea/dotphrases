class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate
  private
  def authenticate
    @current_user = User.find_by_auth_token( cookies[:auth_token]) if cookies[:auth_token]
    @current_user ||= session[:user_id].present? ? User.find(session[:user_id]) : nil
  end
  def is_logged_in?
    @current_user.present?
  end
  def is_admin?
    is_logged_in? && @current_user.is_admin
  end
  def is_owner?(object)
    is_logged_in? && (object.user == @current_user)
  end
  def is_owner_or_admin?
    is_admin? || is_owner?
  end
end