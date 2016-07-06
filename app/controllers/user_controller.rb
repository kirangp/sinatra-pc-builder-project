class UserController < ApplicationController
    get '/signup' do
        erb :'users/new' unless session[:user_id]
    end

    post '/signup' do
        if params[:username] == '' || params[:password] == ''
            redirect to '/signup'
        else
            @user = User.create(username: params[:username], password: params[:password])
            session[:user_id] = @user.id
            redirect to '/systems'
        end
    end


end
