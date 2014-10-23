class CreateUserPost < ActiveRecord::Migration
  def change
  	  	create_table :posts do |t|
  		t.integer :post_id
  		t.integer :user_id
  		t.string :user_name
  		t.string :blog_post
  		t.datetime :time_posted  		
  	end 		 
  end
end

