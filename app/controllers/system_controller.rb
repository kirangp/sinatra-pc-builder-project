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

    get '/systems/:id/edit' do
        redirect_if_not_logged_in
        @system = System.find(params[:id])
        @build = CompletedBuild.find(@system.completed_build_id)
        erb :'systems/edit'
    end

    post '/systems/:id' do
        redirect_if_not_logged_in
        @system = System.find(params[:id])
        @system.update(params.select { |k| k == 'cpu' || k == 'motherboard' || k == 'memory' || k == 'storage' || k == 'videocard' || k == 'powersupply' || k == 'case' || k == 'completed_build_id' })
        redirect "/systems/#{@system.id}"
    end

    get '/systems/:id' do
        redirect_if_not_logged_in
        @system = System.find(params[:id])
        @build = CompletedBuild.find(@system.completed_build_id)
        erb :'systems/show'
    end

    post '/systems' do
        redirect_if_not_logged_in
        System.create(params)
        redirect '/systems'
    end
end
