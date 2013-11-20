class SessionsController < ApplicationController
  def create
    @driver = Driver.find_by(Email__c: params[:email])
    if @driver && @driver.authenticate(params[:password])
      log_in(@driver)
    end
    redirect_to root_path
  end

  def destroy
    log_out
    redirect_to root_path
  end
end