class DriversController < ApplicationController
 def create
    @driver = Driver.save(params) if Driver.find_by_email(params[:email])
  end

  def new
    @driver = Driver.new
  end
end