require 'bundler/setup'
require 'sinatra'
require 'sinatra/activerecord'
require 'rack-flash'


set :database, "sqlite3:app.sqlite3"
set :sessions, true
use Rack::Flash, :sweep => true

require './models'


def current_user
	if session[:user_id]
		@current_user||=User.find(session[:user_id])
	end
	@current_user
end




get '/sign_up_form' do 
	erb :new_user
end

post '/sign_up_form' do
	new_user = User.new(params)
		if(user.save)
		erb :user, :locals => { :user => new_user }
		else
		 erb :home
		     flash[:notice] = "You have successfully logged in."
	end
end



get '/sign-in' do
erb :sign_in
end
 
post '/sign-in' do
		user = User.where(email: params[:email]).first
			if user.password == params[:password]
			session[:user_id] = user.id
			flash[:notice] = "User signed in successfully."
			redirect '/'
			else
			flash[:alert] = "There was a problem signing you
			in."
			redirect '/login-failed'
	end
end

#remember the layout.erb, if blank, overrides erb files.



	