class OrdersController < ApplicationController

  def index
    @active_driver = ActiveDriver.new
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
      # , include: :customers)
  end
end