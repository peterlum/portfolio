class CreateUserSessions < ActiveRecord::Migration
  def change
  	  	create_table :sessions do |t|
  		t.integer :user_id
  		t.string :first_name
  		t.string :last_name
  		t.datetime :time_logged_in
  		t.datetime :time_logged_out
  	end 		 
  end
end

