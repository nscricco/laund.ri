class Customer < ActiveRecord::Base
  has_many :orders, class_name: "Order", foreign_key: "Customer_SF_ID__c"


  def customer_attributes
    titles = ['Customer_id', 'Name', 'Street', 'City', 'State', 'Zip', 'Phone', 'Email', 'Preferences']
    values = self.attributes.map {|key, value| value}
    Hash[titles.zip(values)]
  end

end