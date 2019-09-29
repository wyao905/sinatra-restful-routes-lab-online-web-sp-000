class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  
  get '/recipes' do
    erb :index
  end
  
  get '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    erb :show
  end
  
  post '/'
end
