class ActiveDriversController < ApplicationController
 def create
    if @driver = Driver.find_by(Email__c: params[:active_driver][:Email__c], type: nil) 
      @driver.type = "ActiveDriver"
      if @driver.save
        @active_driver = ActiveDriver.find(@driver.id)
        @active_driver.password = params[:active_driver][:password]
        @active_driver.password_confirmation = params[:active_driver][:password_confirmation]
        @active_driver.save
      end
      log_in(@driver)
    end
    redirect_to root_path
  end

  def new
    @active_driver = ActiveDriver.new
  end
end