class Customer < ActiveRecord::Base
	has_many :orders, class_name: "Order", foreign_key: "Customer_SF_ID__c"
end