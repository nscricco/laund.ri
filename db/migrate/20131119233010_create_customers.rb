class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :Name
      t.string :Street__c
      t.string :City__c
      t.string :State__c
      t.string :Zipcode__c
      t.string :PhoneNumber__c
      t.string :Email__c
      t.text :Preferences__c
    end
  end
end
