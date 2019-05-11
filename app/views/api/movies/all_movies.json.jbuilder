#json.message @movies

json.array! @movies.each do |movie|
  json.ID movie.id
  json.TITLE movie.title
  json.YEAR movie.year
  json.PLOT movie.plot

end