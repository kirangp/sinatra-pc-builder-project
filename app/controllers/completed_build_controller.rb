class CompletedBuildController < ApplicationController

  get '/builds' do
    @builds = CompletedBuild.all
    erb :'builds/index'
  end

end
