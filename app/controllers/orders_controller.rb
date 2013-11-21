class OrdersController < ApplicationController
  include SFM

  def index
    @active_driver = ActiveDriver.new
    @orders = Order.ready_for_pickup
  end

  def show
    @order = Order.find(params[:id], include: :customer)
    @order_attributes = @order.order_attributes
    @customer_attributes = @order.customer.customer_attributes
  end

  def update
    @order = Order.find(params[:id], include: :customer)
    client = get_client
    sf_id = @order.Id
    order_sf = SFM.retrieve_model("Order__c").find(sf_id)
    if params[:confirming] == 'delivered'  && @order.delivered__c.nil?
      @order.touch(:delivered__c)
      order_sf.update_attributes "delivered__c" => @order.delivered__c
    elsif params[:confirming] == 'en_route' && @order.en_route__c.nil?
      @order.touch(:en_route__c)
      order_sf.update_attributes "delivered__c" => @order.delivered__c
    end
  end

  def get_client
    SFM.init
    SFM.client
  end

end