class CreateUserProfile < ActiveRecord::Migration
  def change
  	  	create_table :profile do |t|
  	  	t.integer :user_id
  	  	t.string :user_name
  		t.string :first_name
  		t.string :last_name
  		t.text :bio
  		t.string :email_address
  		t.datetime :member_since
  		t.datetime :birthday
  	end 		 
  end
end
