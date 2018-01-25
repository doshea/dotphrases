class SessionsController < ApplicationController

  # GET /login or login_path
  def new
    @user = User.new
  end

  # POST /login or login_path
  def create
    user = User.find_by_username(params[:user][:username])
    if user.present? && user.authenticate(params[:user][:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end
      redirect_to root_path
    else
      redirect_to login_path, flash: {error: 'Username/password combination did not match our records'}
    end
  end

  # DELETE /logout or logout_path
  def destroy
    session[:user_id] = nil
    cookies.delete(:auth_token)
    redirect_to root_url
  end

end
