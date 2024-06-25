require "json"
require "open-uri"

puts "Cleaning database..."
Movie.destroy_all
Bookmark.destroy_all
List.destroy_all

url = "https://tmdb.lewagon.com/movie/top_rated"
movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)

puts "Creating movies..."
movies["results"].each do |movie|
  Movie.create(title: movie["title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/original#{movie["poster_path"]}", rating: movie["vote_average"])
  puts "#{movie["title"]} added to database."
end

puts "Finished!"
