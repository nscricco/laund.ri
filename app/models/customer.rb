class Customer < ActiveRecord::Base
  has_many :orders


  def customer_attributes
    titles = ['Customer_id', 'Name', 'Street', 'City', 'State', 'Zip', 'Phone', 'Email', 'Preferences']
    values = self.attributes.map {|key, value| value}
    Hash[titles.zip(values)]
  end


end