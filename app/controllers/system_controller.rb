class SystemController < ApplicationController


  get '/systems' do
    @systems = System.all
    erb :'systems/index'
  end

  get '/systems/new' do
  
  end


end
