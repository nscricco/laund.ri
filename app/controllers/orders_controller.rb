class OrdersController < ApplicationController

  def index
    @active_driver = ActiveDriver.new
  end

end