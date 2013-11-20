class OrdersController < ApplicationController
  def index
    @driver = Driver.new
    # @orders = Order.all
  end
end