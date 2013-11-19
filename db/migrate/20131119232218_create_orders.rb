class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :weight
      t.decimal :cost
      t.integer :number_of_items
      t.string :service_type
      t.datetime :ready_for_pickup
      t.datetime :en_route
      t.datetime :arrived
      t.datetime :complete
      t.datetime :delivered
    end
  end
end
