class SystemController < ApplicationController


  get '/systems' do
    redirect_if_not_logged_in
    @systems = System.all
    erb :'systems/index'
  end

  get '/systems/new' do
    redirect_if_not_logged_in
    @system = System.new
    erb :'systems/new'
  end

  post '/systems' do
    redirect_if_not_logged_in
    System.create(params)
    redirect '/systems'
  end


end
