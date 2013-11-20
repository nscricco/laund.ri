class AddIdToCustomers < ActiveRecord::Migration
  def change
  	add_column :customers, :Id, :string
  end
end
