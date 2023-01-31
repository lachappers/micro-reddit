class ApplicationController < ActionController::Base

  def current_user
    User.find(cookies[:user_id])
  end
end
