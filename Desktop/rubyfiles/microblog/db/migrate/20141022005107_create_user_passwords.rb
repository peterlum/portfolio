class CreateUserPasswords < ActiveRecord::Migration
  def change
  	create_table :passwords do |t|
  		t.string :password
  		t.integer :user_id
  	end
  end
end
