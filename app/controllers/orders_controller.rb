class OrdersController < ApplicationController

  def index
    @active_driver = ActiveDriver.new
  end

  def show
    @order = Order.find(params[:id])
      # , include: :customers)
  end
end