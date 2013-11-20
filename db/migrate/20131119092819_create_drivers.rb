class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :password__c
      t.string :Email__c
      t.timestamps
    end
  end
end
