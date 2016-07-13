class CompletedBuildController < ApplicationController
    get '/builds' do
        @builds = CompletedBuild.all
        erb :'builds/index'
    end

    get '/builds/new' do
        redirect_if_not_logged_in
        erb :'builds/new'
    end

    get '/builds/:id/edit' do
        redirect_if_not_logged_in

        @build = CompletedBuild.find(params[:id])
        erb :'builds/edit'
    end

    post '/builds/:id' do
        redirect_if_not_logged_in
        @build = CompletedBuild.find(params[:id])
        @build.update(params.select { |k| k == 'name' || k == 'price' })
        redirect "/builds/#{@build.id}"
    end

    get '/builds/:id' do
        redirect_if_not_logged_in
        @build = CompletedBuild.find(params[:id])
        erb :'builds/show'
    end

    post '/builds' do
        redirect_if_not_logged_in
        @build = CompletedBuild.create(params)
        @build.user_id = session[:user_id]
        @build.save

        redirect '/builds'
    end
end
