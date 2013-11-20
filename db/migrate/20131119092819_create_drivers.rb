class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :Email__c
      
      # for single table inheritance 
      t.string :type

      # for active drivers only
      t.string :password_digest

      t.timestamps


    end
  end
end
