class Api::MoviesController < ApplicationController
  
  def all_movies_action
    @movies = Movie.all #returns array of movies
    render 'all_movies.json.jbuilder'
  end
  
  def one_movie_action
    movie_id = params[:id]
    @movie = Movie.find_by(id: movie_id) #a hash of movie data
    render 'one_movie.json.jbuilder'
  end

end
