require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Artwork.destroy_all
User.destroy_all
Collection.destroy_all
ArtworkCollection.destroy_all

puts "Creating user..."
joey = User.create!(first_name: "Joey", last_name: "Artist", email: "joeyartist@email.com", password: "123456")

puts "Creating collections..."
first_collection = Collection.new(title: "New & Noteworthy", description: "The crème de la crème of the newest Artichoke additions")
file = URI.open("https://source.unsplash.com/random/?art")
first_collection.photo.attach(io: file, filename: "first_collection.png", content_type: "image/png")
first_collection.save!
second_collection = Collection.create!(title: "Bold Bids", description: "How much? These eyecatching pieces are causing a stir")
file = URI.open("https://source.unsplash.com/random/?art")
second_collection.photo.attach(io: file, filename: "second_collection.png", content_type: "image/png")
second_collection.save!
third_collection = Collection.create!(title: "Exhibiting Artists", description: "Showcasing the artists who are doing great things")
file = URI.open("https://source.unsplash.com/random/?art")
third_collection.photo.attach(io: file, filename: "third_collection.png", content_type: "image/png")
third_collection.save!
fourth_collection = Collection.create!(title: "Gems under £500", description: "Grab a bargain for the downstairs toilet")
file = URI.open("https://source.unsplash.com/random/?art")
fourth_collection.photo.attach(io: file, filename: "fourth_collection.png", content_type: "image/png")
fourth_collection.save!

puts "Creating art..."
mona = { title: "Mona Lisa", price: 100, user: joey }
scream = { title: "The Scream", price: 200, user: joey }
pitchfork = { title: "American Gothic", price: 300, user: joey }
diners = { title: "Nighthawks", price: 400, user: joey }

[mona, scream, pitchfork, diners].each do |attributes|
  artwork = Artwork.new(attributes)
  file = URI.open("https://source.unsplash.com/random/?#{attributes[:title]}")
  artwork.photo.attach(io: file, filename: "#{attributes[:title]}.png", content_type: "image/png")
  artwork.save!
  puts "Created #{artwork.title}"
  ArtworkCollection.create!(artwork: artwork, collection: first_collection)
  ArtworkCollection.create!(artwork: artwork, collection: second_collection)
  ArtworkCollection.create!(artwork: artwork, collection: third_collection)
  ArtworkCollection.create!(artwork: artwork, collection: fourth_collection)
end

puts "Finished!"
