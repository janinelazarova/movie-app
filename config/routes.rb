Rails.application.routes.draw do
 
 #get "display_actor"=>"actors#display_actor"
  namespace :api do
    get "/display_all_movies" => "movies#all_movies_action"

    get "/display_one_movie/:id" => "movies#one_movie_action"
  end

end
