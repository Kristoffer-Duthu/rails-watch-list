# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

Bookmark.destroy_all
Movie.destroy_all

url = 'http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>'
info_serialized = URI.open(url).read
info = JSON.parse(info_serialized)
p info
results = info["results"]

results.take(10).each do |movie|
  base = "https://image.tmdb.org/t/p/w500/"
  poster_url = movie["poster_path"].include?("https://image.tmdb.org") ? movie["poster_path"] : base + movie["poster_path"]

  m = Movie.create!(title: movie["title"], overview: movie["overview"], poster_url: poster_url, rating: movie["vote_average"])
  puts "created a movie: #{m.title}!"
end
