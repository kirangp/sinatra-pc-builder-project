require './config/environment'

class ApplicationController < Sinatra::Base
    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        set :session_secret, 'AvinashistheKING'
    end

    get '/' do
        redirect '/signup'
    end

    helpers do
        def redirect_if_not_logged_in
            redirect '/sessions/login' unless logged_in?
        end

        def logged_in?
            !!session[:user_id]
        end

        def current_user
            User.find(session[:user_id])
        end
    end
end
