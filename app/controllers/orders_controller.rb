class OrdersController < ApplicationController

  def index
    @active_driver = ActiveDriver.new
    @orders = Order.all
  end

end