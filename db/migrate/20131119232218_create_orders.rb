class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :Weight__c
      t.decimal :Cost__c
      t.integer :Number_of_Items__c
      t.string :Type__c
      t.datetime :Ready_For_Pickup__c
      t.datetime :en_route__c
      t.datetime :arrived__c
      t.datetime :complete__c
      t.datetime :delivered__c
    end
  end
end
