class Api::ActorsController < ApplicationController


  def index
    @actors = Actor.all

    if params[:sort] == "age" && params[:order] == "desc"
         @actors = @actors.order(age: :desc)
    end
    
    if params[:sort] == "age" && params[:order] == "asc"
         @actors = @actors.order(:age)
    end

    render 'index.json.jbuilder'
  end

  def show
    @actor = Actor.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @actor = Actor.new(
        first_name: params[:first_name],
        last_name: params[:last_name],
        known_for: params[:known_for],
        gender: params[:gender],
        age: params[:age]
        )
    
    if @actor.save
         #happy path
         render 'show.json.jbuilder'
    else
         #sad path
         render json: {errors: @actor.errors.full_messages}, status: 422
    end     

  end

  def update
    @actor = Actor.find(params[:id])
    
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age
    
    
    if @actor.save
         #happy path
         render 'show.json.jbuilder'
    else
         #sad path
         render json: {errors: @actor.errors.full_messages}, status: unprocessable_entity
    end     

  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy

    render json: {message: "Record Destroyed"}
  end

end
