class ActorsController < ApplicationController
  def display_actor
    @actor = Actor.find_by(id:1)
    render = display_actor.json.jbuilder
  end

end
