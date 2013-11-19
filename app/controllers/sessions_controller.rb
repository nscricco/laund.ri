class SessionsController < ApplicationController
  def create
    @user = User.find_by_username(params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      log_in(@user)
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end