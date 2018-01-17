class UsersController < ApplicationController

  #POST /users or users_path
  def create
    @user = User.new(create_user_params)
    if @user.save
      session[:user_id] = @user.id unless session[:user_id]
      redirect_to root_path
    else
      error_messages = @user.errors.full_messages.uniq
      error_count = error_messages.length
      form_error = "There #{error_count > 1 ? 'were' : 'was' } #{pluralize(error_count, 'error')} signing up:"
      redirect_to new_user_path, flash: {form_errors: error_messages, form_error: form_error}
    end
  end

  private
  def create_user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
