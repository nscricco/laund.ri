class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :password_digest
      t.string :password_confirmation
      t.string :email
      t.timestamps
    end
  end
end
