class SystemController < ApplicationController


  get '/systems' do
    @systems = System.all
    erb :'systems/index'
  end

  get '/systems/new' do
    redirect_if_not_logged_in
    erb :'systems/new'
  end

  post '/systems' do
    redirect_if_not_logged_in


  end


end
