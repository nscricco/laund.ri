class OrdersController < ApplicationController

  def index
    @active_driver = ActiveDriver.new
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id], include: :customer)
    @order_attributes = @order.order_attributes
    @customer_attributes = @order.customer.customer_attributes
  end

  def update
    

  end

end