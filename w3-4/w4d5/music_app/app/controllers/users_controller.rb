class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in_user!(@user)
      redirect_to user_url
    else
      flash.now[:errors] = @user.errors.full_messages
      redirect_to new_session_url
    end
  end

  def show
    render :show
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
