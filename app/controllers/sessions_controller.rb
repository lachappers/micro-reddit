class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: user_params[:username])

    if @user
      cookies[:user_id] = @user.id
      redirect_to posts_path
    else
      flash.now[:notice] = "Invalid username"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

end
