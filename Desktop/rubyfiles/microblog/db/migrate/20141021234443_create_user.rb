class CreateUser < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :user_name
  		t.string :first_name
  		t.string :last_name
  		t.string :password
  		t.string :email_address
  		t.datetime :member_since
  		t.datetime :birthday
  	end 		 
  end
end
