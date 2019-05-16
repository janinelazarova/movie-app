class Api::MoviesController < ApplicationController
  
   def index
     @movies = Movie.all
     render 'index.json.jbuilder'  
   end

   def show
     @movie = Movie.find(params[:id])
     render 'show.json.jbuilder'  
   end

   def create
     @movie = Movie.new(
         title: params[:title],
         year: params[:year],
         plot: params[:plot],
         director: params[:director],
         english: params[:english]
         )

     if @movie.save
          render 'show.json.jbuilder'
     else
          render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
     end     

   end 

   def update
     @movie = Movie.find(params[:id])
     
     @movie.title = params[:title] || @movie.title
     @movie.year = params[:year] || @movie.year
     @movie.plot = params[:plot] || @movie.plot
     @movie.director = params[:director] || @movie.director
     @movie.english = params[:english] || @movie.english
     
     if @movie.save
          render 'show.json.jbuilder'
     else
          render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
     end     

   end

   def destroy
     @movie = Movie.find(params[:id])
     @movie.destroy
     render json: {message: "Movie Destroyed"}
   end 
   
end





  #def all_movies_action
   # @movies = Movie.all #returns array of movies
    #render 'all_movies.json.jbuilder'
  #end
  
  #def one_movie_action
  #  movie_id = params[:id]
  # @movie = Movie.find_by(id: movie_id) 
  #  render 'one_movie.json.jbuilder'
  #end

  #def show_query_param
      #key1 = params[:first_key]
      #key2 = params[:second_key]
      #@actor = Actor.find_by(first_name: key1, known_for: key2)
      #render 'show.json.jbuilder'
  #end

  #def show_url_segment_param           
        #@actor = Actor.find(params[:id])
        #render 'show.json.jbuilder'
  #end
      
  #def show_body_param
        #@actor = Actor.find_by(
                #first_name: params[:key1],
                #known_for: params[:key2]
        #) 
        #render 'show.json.jbuilder'
        
  #end    


