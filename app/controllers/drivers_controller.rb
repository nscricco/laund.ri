class DriversController < ApplicationController
 def create
    @driver = Driver.new(params[:user])
  end

  def new
    @driver = Driver.new
  end
end