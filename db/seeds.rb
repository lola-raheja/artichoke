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

david_boatwright = User.create!(first_name: "David", last_name: "Boatwright", email: "luckyboyart@comcast.net",
  password: "123456", nationality: "American",
  bio: "David Boatwright is a painter, known for his murals, as well as a musician and filmmaker.
  From Camden, South Carolina, he holds an MFA in painting from the SF Art Institute and was a graduate fellow at AFI
  filmschool in Los Angeles. In 1977, he received a grant from the National Endowment for the Arts to make documentary
  films, resulting in the film Aimar’s, a pastiche of life in Charleston encapsulated by a pharmacy’s last day in
  business. Boatwright always maintained a painting practice, which came to the forefront to his artistic career in the
  1990s. Working under the mantle of Lucky Boy Art, Boatwright has painted more than 50 murals across South Carolina,
  Georgia, and Louisiana. His studio oil on canvas work has also been exhibited at the Halsey Institute of Contemporary
  Art, City Gallery at Waterfront Park, and Eye Level Art. In 2019, he was a visiting artist at the Gibbes Museum in
  Charleston, SC, responding to a painting from their collection, “Plowing it Under” by Thomas Hart Benton, a distant
  relative of Boatwright’s. His work often harkens to the South of his youth, employing mythical characters,
  agricultural life, and alligators.", date_of_birth: "1947-05-26", degree: "MFA from SF Art Institute",
  location: "Charleston")

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

funk = Artwork.new(title: "Funk (Hardest Working Man)", price: 5000, user: david_boatwright, medium: "painting", height: 150, width: 300, year: "2020-01-01", material: "Oil on canvas")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/9932845_orig.jpg")
funk.photo.attach(io: file, filename: "funk.jpg", content_type: "image/jpg")
funk.save!

ArtworkCollection.create!(artwork: funk, collection: first_collection)

puts "Finished!"
