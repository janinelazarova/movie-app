json.array! @movies.each do |movie|
  json.id movie.id
  json.title movie.title
  json.year movie.year
  json.plot movie.plot
  json.director movie.director
  json.english movie.english
  json.genre_names movie.genre_names
 end 