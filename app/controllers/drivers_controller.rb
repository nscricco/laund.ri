class DriversController < ApplicationController
 def create
    if @driver = Driver.find_by_email(params[:email])
      @driver.save(params)
      log_in(@driver)
      puts "******************************************"
      puts session
    end
    redirect_to root_path
  end

  def new
    @driver = Driver.new
  end
end