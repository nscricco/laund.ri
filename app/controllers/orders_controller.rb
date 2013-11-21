class OrdersController < ApplicationController
  include Databasedotcom::Rails::Controller
  def index
    @active_driver = ActiveDriver.new
    @orders = Order.ready_for_pickup
  end

  def show
    @order = Order.includes(:customer).find(params[:id])
    @order_attributes = @order.order_attributes
    @customer_attributes = @order.customer.customer_attributes
  end

  def update
    @order = Order.includes(:customer).find(params[:id])
    if params[:confirming] == 'delivered'  && @order.delivered__c.nil?
      @order.touch(:delivered__c)
    elsif params[:confirming] == 'en_route' && @order.en_route__c.nil?
      @order.touch(:en_route__c)
    end

    respond_to do |format|
      format.json { render json: { object:@order } }
      format.html { redirect_to(order_path) }
    end
  
  end

end