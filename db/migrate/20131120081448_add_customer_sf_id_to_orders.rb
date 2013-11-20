class AddCustomerSfIdToOrders < ActiveRecord::Migration
  def change
	add_column :orders, :Customer_SF_ID__c, :string
  end
end
