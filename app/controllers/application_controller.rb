require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
      set :public_folder, 'public'
      set :views, 'app/views'
      enable :sessions
      set :session_secret, "AvinashistheKING"
    end

    get '/' do
      redirect "/signup"
    end





end
