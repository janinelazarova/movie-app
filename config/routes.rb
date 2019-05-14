Rails.application.routes.draw do
 
 #get "display_actor"=>"actors#display_actor"
  namespace :api do
   
    #get "/display_all_movies" => "movies#all_movies_action"

    #get "/display_one_movie/:id" => "movies#one_movie_action"

    #get "/actors" => "movies#show_query_param"
  
    #get "/actors/:id" => "movies#show_url_segment_param"
  
    #post "/actors" => "movies#show_body_param"

    
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

  end

end
