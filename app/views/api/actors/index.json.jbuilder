json.array! @actors.each do |actor|
  json.id actor.id
  json.first_name actor.first_name
  json.last_name actor.last_name
  json.known_for actor.known_for
  json.gender actor.gender
  json.age actor.age
  json.movie_plot actor.movie.plot
end