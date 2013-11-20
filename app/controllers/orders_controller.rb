class OrdersController < ApplicationController
  include Databasedotcom::Rails::Controller
  def index
    @active_driver = ActiveDriver.new
    @orders = Order.all
  end

  def show
    order = Order.find(params[:id], include: :customer)
    @order = order.order_attributes
    @customer = order.customer.customer_attributes
  end
end