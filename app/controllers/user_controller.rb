class UserController < ApplicationController

  get '/signup' do
      if !session[:user_id]
        erb :'users/new'
      else
      #  puts "Username is #{session[:user_id]}"
      end
    end

    post '/signup' do
   if params[:username] == "" || params[:password] == ""
     redirect to '/signup'
   else
     @user = User.create(:username => params[:username], :password => params[:password])
     session[:user_id] = @user.id
   end
 end


end
