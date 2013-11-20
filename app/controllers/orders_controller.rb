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
    @order = Order.find(params[:id], include: :customer)
    puts "FUCK"
    if params[:confirming] == 'delivered'  && @order.delivered__c.nil?
      puts "WHATEVER"
      @order.touch(:delivered__c)

    elsif params[:confirming] == 'en_route' && @order.en_route__c.nil?
      @order.touch(:en_route__c)
    end
  end

end