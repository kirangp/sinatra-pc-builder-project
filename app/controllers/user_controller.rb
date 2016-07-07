class UserController < ApplicationController
    get '/users/:id' do
        redirect '/builds' unless logged_in?

        @user = User.find(params[:id])
        if !@user.nil? && @user == current_user
            erb :'users/show'
        else
            redirect '/builds'
        end
    end

    get '/signup' do
        if !session[:user_id]
            @user = User.new
            erb :'users/new'
        else
            redirect to '/builds'
        end
    end

    post '/signup' do
        if params[:username] == '' || params[:password] == ''
            redirect to '/signup'
        else
            @user = User.new(params)
            session[:user_id] = @user.id
            redirect to '/builds'
        end
    end
end
