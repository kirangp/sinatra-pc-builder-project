class SessionController < ApplicationController
    get '/login' do
        if !logged_in?
            @user = User.new
            erb :'sessions/login'
        else
            redirect '/builds'
        end
    end

    post '/login' do
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect '/builds'
        else
            redirect to '/signup'
        end
    end

    get '/logout' do
        if !session[:user_id].nil?
            session.destroy
            redirect to '/login'
        else
            redirect to '/'
        end
    end
end
