class SessionsController < ApplicationController
  def create
    @driver = Driver.find_by_username(params[:session][:username])
    if @driver && @driver.authenticate(params[:session][:password])
      log_in(@driver)
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end