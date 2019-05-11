require "http"

system "clear"
puts "Choose an option: "
puts "[All] Display All Movies"
puts "[1] Display Movie 1"
puts "[2] Display Movie 2"
puts "[3] Display Movie 3"
puts "[4] Display Movie 4"
puts "[5] Display Movie 5"
puts "[6] Display Movie 6"

user_input = gets.chomp

if user_input == "All"
  response = HTTP.get("http://localhost:3000/api/display_all_movies")
  all_movies = response.parse
  puts "All Movies: #{all_movies}"
else
  response = HTTP.get("http://localhost:3000/api/display_one_movie/#{user_input}")
  movie_details = response.parse
  puts movie_details
end
