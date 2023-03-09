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

puts "Creating users..."

david_boatwright = User.create!(first_name: "David", last_name: "Boatwright", email: "luckyboyart@email.com",
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
  relative of Boatwright’s. His work often harkens to the South of his youth, employing mythical characters, freak show characters,
  agricultural life, and alligators.", date_of_birth: "1947-05-26", degree: "MFA from SF Art Institute",
  location: "Charleston")
file = URI.open("data:image/jpeg;base64,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")
david_boatwright.photo.attach(io: file, filename: "david_boatwright.jpg", content_type: "image/jpg")
david_boatwright.save!

puts "Creating collections..."
first_collection = Collection.new(title: "New & Noteworthy", description: "Our curators gather their top picks of the newest artists to join Artichoke.")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/6223450_orig.jpg")
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

eleven_dollars = Artwork.new(title: "Eleven Dollars", price: 5000, user: david_boatwright, medium: "painting", height: 150, width: 300, year: "2020-01-01", material: "Oil on canvas")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/2947265_orig.jpg")
funk.photo.attach(io: file, filename: "eleven_dollars.jpg", content_type: "image/jpg")
funk.save!

six_dollars = Artwork.new(title: "Six Dollars", price: 1000, user: david_boatwright, medium: "painting", height: 150, width: 300, year: "2020-01-01", material: "Oil on canvas")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/9086013_orig.jpg")
funk.photo.attach(io: file, filename: "six_dollars.jpg", content_type: "image/jpg")
funk.save!

i_aint_know = Artwork.new(title: "I Ain't Know", price: 500, user: david_boatwright, medium: "print", height: 75, width: 100, year: "2020-01-01", material: "Limited edition giclee print")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/6223450_orig.jpg")
funk.photo.attach(io: file, filename: "i_aint_know.jpg", content_type: "image/jpg")
funk.save!

no_dice = Artwork.new(title: "No Dice", price: 4500, user: david_boatwright, medium: "painting", height: 150, width: 200, year: "2017-01-01", material: "Oil on canvas")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/img-0348_orig.jpeg")
funk.photo.attach(io: file, filename: "no_dice.jpg", content_type: "image/jpg")
funk.save!

artwork1 = [funk, eleven_dollars, six_dollars, i_aint_know, no_dice]
ArtworkCollection.create!(artwork: artwork1, collection: first_collection)

puts "Finished!"
