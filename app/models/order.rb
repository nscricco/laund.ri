class Order < ActiveRecord::Base
	belongs_to :customer, class_name: "Customer", foreign_key: "Id"

  def order_attributes
    titles = ['Order Id', 'Weight', 'Price', 'Number of Items', 'Type', 'Ready for Pickup?', 'En Route?', 'Arrived?', 'Order Completed?', 'Delivered', 'Customer ID']
    values = self.attributes.map {|key, value| value}
    Hash[titles.zip(values)]
  end

	def customer
		Customer.all.each do |c|
			return c if self.Customer_SF_ID__c == c.Id
		end
	end
end