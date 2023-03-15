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
Bid.destroy_all
Medium.destroy_all

puts "Creating users..."

pat = User.new(first_name: "Pat", last_name: "Patterson", email: "pat@email.com", password: "123456", nationality: "British", bio: "I'm Pat and I love hats and art!", date_of_birth: "1980-01-01", location: "London")
file = URI.open("https://source.unsplash.com/random/?male%20face")
pat.photo.attach(io: file, filename: "profile_photo.png", content_type: "image/png")
pat.save!

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
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/9961955_orig.jpeg")
david_boatwright.photo.attach(io: file, filename: "david_boatwright.jpg", content_type: "image/jpg")
david_boatwright.save!

molly_b_right = User.create!(first_name: "Molly", last_name: "B. Right", email: "moboright@email.com",
  password: "123456", nationality: "American",
  bio: "Molly B. Right specializes in oversized mosaic-like portraits made from vintage bottle caps.
  Right is a self-taught artist. She began by painting small paintings, often on pieces of scrap metal or lumber that
  she found. The subject matter ranged from vignettes of her childhood to minimalist figurative works.
  She made her leap from narrative paintings to bottle cap portraits was made in 2002.", date_of_birth: "1963-06-26",
  degree: "Self-taught",
  location: "Charleston")
file = URI.open("https://mollybright.com/wp-content/uploads/2021/08/molly-headshot.jpg")
molly_b_right.photo.attach(io: file, filename: "molly_b_right.jpg", content_type: "image/jpg")
molly_b_right.save!

puts "Creating collections..."
first_collection = Collection.new(title: "New & Noteworthy", description: "Our curators gather their top picks of the newest artists to join Artichoke.")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/6223450_orig.jpg")
first_collection.photo.attach(io: file, filename: "first_collection.png", content_type: "image/png")
first_collection.save!
second_collection = Collection.create!(title: "Bold Bids", description: "How much? These eyecatching pieces are causing a stir")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23517551885_9466035078_b.jpg")
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

puts "Creating media..."

# media = ["Painting", "Photography", "Multi-media", "Sculpture", "Drawing", "Print"]

# media.each do |medium|
#   Medium.create!(medium: medium.to_s)
# end

painting = Medium.create!(medium: "Painting")
photography = Medium.create!(medium: "Photography")
multimedia = Medium.create!(medium: "Multi-media")
sculpture = Medium.create!(medium: "Sculpture")
prints = Medium.create!(medium: "Print")

puts "Creating art..."

funk = Artwork.new(title: "Funk (Hardest Working Man)", price: 5000, user: david_boatwright, medium: painting,
height: 150, width: 300, year: "2020-01-01", material: "Oil on canvas", end_time: "2023-05-26 18:02:25")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/9932845_orig.jpg")
funk.photo.attach(io: file, filename: "funk.jpg", content_type: "image/jpg")
funk.save!
ArtworkCollection.create!(artwork: funk, collection: first_collection)
first_collection.save!

eleven_dollars = Artwork.new(title: "Eleven Dollars", price: 5000, user: david_boatwright, medium: painting,
  height: 150, width: 300, year: "2020-01-01", material: "Oil on canvas", end_time: "2023-05-26 18:02:25")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/2947265_orig.jpg")
eleven_dollars.photo.attach(io: file, filename: "eleven_dollars.jpg", content_type: "image/jpg")
eleven_dollars.save!
ArtworkCollection.create!(artwork: eleven_dollars, collection: first_collection)
first_collection.save!

six_dollars = Artwork.new(title: "Six Dollars", price: 1000, user: david_boatwright, medium: painting,
  height: 150, width: 300, year: "2020-01-01", material: "Oil on canvas", end_time: "2023-05-26 18:02:25")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/9086013_orig.jpg")
six_dollars.photo.attach(io: file, filename: "six_dollars.jpg", content_type: "image/jpg")
six_dollars.save!
ArtworkCollection.create!(artwork: six_dollars, collection: first_collection)
first_collection.save!

i_aint_know = Artwork.new(title: "I Ain't Know", price: 500, user: david_boatwright, medium: painting,
  height: 75, width: 100, year: "2020-01-01", material: "Limited edition giclee print", end_time: "2023-05-26 18:02:25")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/6223450_orig.jpg")
i_aint_know.photo.attach(io: file, filename: "i_aint_know.jpg", content_type: "image/jpg")
i_aint_know.save!
ArtworkCollection.create!(artwork: i_aint_know, collection: first_collection)
first_collection.save!

no_dice = Artwork.new(title: "No Dice", price: 4500, user: david_boatwright, medium: painting,
  height: 150, width: 200, year: "2017-01-01", material: "Oil on canvas", end_time: "2023-05-26 18:02:25")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/img-0348_orig.jpeg")
no_dice.photo.attach(io: file, filename: "no_dice.jpg", content_type: "image/jpg")
no_dice.save!
ArtworkCollection.create!(artwork: no_dice, collection: first_collection)
first_collection.save!

puts "Finished David's artwork!"

jesus = Artwork.new(title: "Jesus", price: 7500, user: molly_b_right, medium: painting,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-05-26 18:02:25")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23409048512_2962ce4fa4_b.jpg")
jesus.photo.attach(io: file, filename: "jesus.jpg", content_type: "image/jpg")
jesus.save!
ArtworkCollection.create!(artwork: jesus, collection: second_collection)
second_collection.save!

mark_twain = Artwork.new(title: "Mark Twain", price: 7500, user: molly_b_right, medium: painting,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-05-26 18:02:25")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23517553855_404d8d1ecd_o.jpg")
mark_twain.photo.attach(io: file, filename: "mark_twain.jpg", content_type: "image/jpg")
mark_twain.save!
ArtworkCollection.create!(artwork: mark_twain, collection: second_collection)
second_collection.save!

amelia_earhart = Artwork.new(title: "Amelia Earhart", price: 7500, user: molly_b_right, medium: painting,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-05-26 18:02:25")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/24022323322_78021decae_o.jpg")
amelia_earhart.photo.attach(io: file, filename: "amelia_earhart.jpg", content_type: "image/jpg")
amelia_earhart.save!
ArtworkCollection.create!(artwork: amelia_earhart, collection: second_collection)
second_collection.save!

frida_kahlo = Artwork.new(title: "Frida Kahlo", price: 7500, user: molly_b_right, medium: painting,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-05-26 18:02:25")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23517551885_9466035078_b.jpg")
frida_kahlo.photo.attach(io: file, filename: "frida_kahlo.jpg", content_type: "image/jpg")
frida_kahlo.save!
ArtworkCollection.create!(artwork: frida_kahlo, collection: second_collection)
second_collection.save!

queen_elizabeth = Artwork.new(title: "Queen Elizabeth", price: 7500, user: molly_b_right, medium: painting,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-05-26 18:02:25")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/24064125266_aa13a14a46_o.jpg")
queen_elizabeth.photo.attach(io: file, filename: "queen_elizabeth.jpg", content_type: "image/jpg")
queen_elizabeth.save!
ArtworkCollection.create!(artwork: queen_elizabeth, collection: second_collection)
second_collection.save!

puts "Finished Molly's artwork!"
