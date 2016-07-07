class UserController < ApplicationController
    get '/signup' do
      if !session[:user_id]
        erb :'users/new'
      else
        redirect to '/builds'
      end
    end

    post '/signup' do
        if params[:username] == '' || params[:password] == ''
            redirect to '/signup'
        else
            @user = User.create(username: params[:username], password: params[:password])
            session[:user_id] = @user.id
            redirect to '/builds'
        end
    end


end
