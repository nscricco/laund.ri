class Order < ActiveRecord::Base
	belongs_to :customer, class_name: "Customer", foreign_key: "Id"

	def customer
		Customer.all.each do |c|
			return c if self.Customer_SF_ID__c == c.Id
		end
	end
end