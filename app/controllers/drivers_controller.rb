class DriversController < ApplicationController
 def create
    if @driver = Driver.find_by(Email__c: params[:email])
      @driver.save(params)
      log_in(@driver)
      puts "#################"
      puts session
      puts "#################"

    end
    redirect_to root_path
  end

  def new
    @driver = Driver.new
  end
end