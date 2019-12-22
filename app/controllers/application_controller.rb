class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  
  get "/recipes/new" do
    
  end
  
  get "/recipes/:id" do
    @recipe = Recipe.find_by(params)
    erb :recipe
  end
  
  get "/recipes/:id/edit" do
    
  end
  
  get "/recipes" do
    @recipes = Recipe.all
    erb :index
  end

end
