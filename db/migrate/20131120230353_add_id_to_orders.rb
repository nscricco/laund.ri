class AddIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :Id, :string
  end
end
