Rails.application.routes.draw do
 
 #get "display_actor"=>"actors#display_actor"
  namespace :api do
    
    get "/actors" => "actors#index"

    get "/actors/:id" => "actors#show"

    post "/actors" => "actors#create"

    patch "actors/:id" => "actors#update"

    delete "actors/:id" => "actors#destroy"
 
    
    get "/movies" => "movies#index"

    get "/movies/:id" => "movies#show"

    post "/movies" => "movies#create"

    patch "movies/:id" => "movies#update"

    delete "movies/:id" => "movies#destroy"

    post "/movie_genres" => "movie_genres#create"

  end

  get "/movies/:id" => "movies#show"

end
