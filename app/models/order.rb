class Order < ActiveRecord::Base
  belongs_to :customer

  def order_attributes
    titles = ['Order Id', 'Weight', 'Price', 'Number of Items', 'Type', 'Ready for Pickup?', 'En Route?', 'Arrived?', 'Order Completed?', 'Delivered', 'Customer ID']
    values = self.attributes.map {|key, value| value}
    Hash[titles.zip(values)]
  end



end