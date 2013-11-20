class DriversController < ApplicationController
 def create
    @driver = Driver.save(params) if Driver.find_by_email(params[:email])
    redirect_to root_path
  end

  def new
    @driver = Driver.new
  end
end