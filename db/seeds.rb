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

joey = User.new(first_name: "Joey", last_name: "Artist", email: "joeyartist@email.com", password: "123456", nationality: "British", bio: "I'm a painter", date_of_birth: "1988-01-01", location: "London")
file = URI.open("https://source.unsplash.com/random/?male%20face")
joey.photo.attach(io: file, filename: "profile_photo.png", content_type: "image/png")
joey.save!

jan = User.new(first_name: "Jan", last_name: "Photographer", email: "janphotographer@email.com", password: "123456", nationality: "Slovakian", bio: "I'm a photographer", date_of_birth: "1990-01-01", location: "Berlin")
file = URI.open("https://source.unsplash.com/random/?male%20face")
jan.photo.attach(io: file, filename: "profile_photo.png", content_type: "image/png")
jan.save!

alex_atack = User.new(first_name: "Alex", last_name: "Atack", email: "alexatack@email.com", password: "123456", nationality: "British", bio: "I'm a photographer", date_of_birth: "1990-01-01", location: "Brighton")
file = URI.open("https://source.unsplash.com/random/?male%20face")
alex_atack.photo.attach(io: file, filename: "alex_atack.png", content_type: "image/png")
alex_atack.save!

ali_karimi = User.new(first_name: "Ali", last_name: "Karimi", email: "alikarimi@email.com", password: "123456", nationality: "Bahraini", bio: "I'm an architect.", date_of_birth: "1987-01-01", location: "Houston")
file = URI.open("https://source.unsplash.com/random/?male%20face")
ali_karimi.photo.attach(io: file, filename: "ali_karimi.png", content_type: "image/png")
ali_karimi.save!

asim_rafiqui = User.new(first_name: "Asim", last_name: "Rafiqui", email: "asimrafiqui@email.com", password: "123456", nationality: "Pakistani American Swedish", bio: "I'm a photographer and filmmaker.", date_of_birth: "1972-01-01", location: "Stockholm")
file = URI.open("https://source.unsplash.com/random/?male%20face")
asim_rafiqui.photo.attach(io: file, filename: "asim_rafiqui.png", content_type: "image/png")
asim_rafiqui.save!

artemis_shaw = User.new(first_name: "Artemis", last_name: "Shaw", email: "artemisshaw@email.com", password: "123456", nationality: "Greek American", bio: "I'm a filmmaker.", date_of_birth: "1989-03-24", location: "New York")
file = URI.open("https://source.unsplash.com/random/?female%20face")
artemis_shaw.photo.attach(io: file, filename: "artemis_shaw.png", content_type: "image/png")
artemis_shaw.save!

dima_srouji = User.new(first_name: "Dima", last_name: "Srouji", email: "dimasrouji@email.com", password: "123456", nationality: "Greek American", bio: "I'm a filmmaker.", date_of_birth: "1989-03-24", location: "New York")
file = URI.open("https://source.unsplash.com/random/?female%20face")
dima_srouji.photo.attach(io: file, filename: "dima_srouji.png", content_type: "image/png")
dima_srouji.save!

dixie_dunbar = User.new(first_name: "Dixie", last_name: "Dunbar", email: "dixiedunbar@email.com", password: "123456", nationality: "American", bio: "I'm a jewelery maker.", date_of_birth: "1950-03-24", location: "Charleston")
file = URI.open("https://source.unsplash.com/random/?female%20face")
dixie_dunbar.photo.attach(io: file, filename: "dixie_dunbar.png", content_type: "image/png")
dixie_dunbar.save!

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
  degree: "Self-taught", location: "Charleston")
file = URI.open("https://mollybright.com/wp-content/uploads/2021/08/molly-headshot.jpg")
molly_b_right.photo.attach(io: file, filename: "molly_b_right.jpg", content_type: "image/jpg")
molly_b_right.save!

sonia_brewin = User.create!(first_name: "Sonia", last_name: "Brewin", email: "soniabrewin@email.com",
  password: "123456", nationality: "British",
  bio: "Sonia specializes in bold, abstract paintings. Each piece is created at her Berlin studio as an investigation of
  colour and pure form. Sonia has collaborated with many arts institutions, including The Deutsche Bank Art Collection,
  The British Council, The British Museum, Jordan National Gallery of Fine Arts, National Museum of Beirut and Art Dubai.
  She also curated the inaugural Sikka Art Fair in Dubai. She's trained at the Prince’s Drawing School (now the Royal
  Drawing School; PGDip) The Slade School of Fine Art, and UCL (MA), and her work is in the collections of The BBC World Service
  Trust, Forbes Foundation, HRH The Prince of Wales. She is currently focused on extending her studio practice
  commercially under the label: ULTRA.",
  date_of_birth: "1974-03-03", degree: "MA from UCL", location: "Berlin")
  file = URI.open("https://optimise2.assets-servd.host/mysterious-eland/production/artwork/Sonia-Brewin/Sonia_portrait.jpg?w=656&auto=compress%2Cformat&fit=crop&fp-x=0.5&fp-y=0.5&dm=1623435453&s=9ef3343f33859ebc23982f384c76bb15")
  sonia_brewin.photo.attach(io: file, filename: "sonia_brewin.jpg", content_type: "image/jpg")
  sonia_brewin.save!

puts "Creating collections..."
first_collection = Collection.new(title: "New & Noteworthy", description: "Our curators gather their top picks of the
  newest artists to join Artichoke.")
file = URI.open("https://source.unsplash.com/random/?contemporaryart")
first_collection.photo.attach(io: file, filename: "first_collection.png", content_type: "image/png")
first_collection.save!
second_collection = Collection.create!(title: "Vibrant Vibes", description: "Craving color? These artists take a fearless
  approach with their use of color.")
file = URI.open("https://source.unsplash.com/random/?color")
second_collection.photo.attach(io: file, filename: "second_collection.png", content_type: "image/png")
second_collection.save!
third_collection = Collection.create!(title: "Bonafide Artists", description: "These artists have been vetted by the art market.
  While they have gallery representation or have exhibited their work, their sales on Artichoke are independent.")
file = URI.open("https://source.unsplash.com/random/?art")
third_collection.photo.attach(io: file, filename: "third_collection.png", content_type: "image/png")
third_collection.save!
fourth_collection = Collection.create!(title: "Decorative Yet Evocative", description: "Art that feeds the mind as well as the eyes.")
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

puts "Creating real art..."

funk = Artwork.new(title: "Funk (Hardest Working Man)", price: 5000, user: david_boatwright, medium: painting,
height: 150, width: 300, year: "2020-01-01", material: "Oil on canvas", end_time: "2023-05-26 18:02:25")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/9932845_orig.jpg")
funk.photo.attach(io: file, filename: "funk.jpg", content_type: "image/jpg")
funk.save!
ArtworkCollection.create!(artwork: funk, collection: third_collection)
third_collection.save!

eleven_dollars = Artwork.new(title: "Eleven Dollars", price: 5000, user: david_boatwright, medium: painting,
  height: 150, width: 300, year: "2020-01-01", material: "Oil on canvas", end_time: "2023-05-26 18:02:25")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/2947265_orig.jpg")
eleven_dollars.photo.attach(io: file, filename: "eleven_dollars.jpg", content_type: "image/jpg")
eleven_dollars.save!
ArtworkCollection.create!(artwork: eleven_dollars, collection: third_collection)
third_collection.save!

six_dollars = Artwork.new(title: "Six Dollars", price: 1000, user: david_boatwright, medium: painting,
  height: 150, width: 300, year: "2020-01-01", material: "Oil on canvas", end_time: "2023-05-26 18:02:25")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/9086013_orig.jpg")
six_dollars.photo.attach(io: file, filename: "six_dollars.jpg", content_type: "image/jpg")
six_dollars.save!
ArtworkCollection.create!(artwork: six_dollars, collection: third_collection)
third_collection.save!

i_aint_know = Artwork.new(title: "I Ain't Know", price: 500, user: david_boatwright, medium: painting,
  height: 75, width: 100, year: "2020-01-01", material: "Limited edition giclee print", end_time: "2023-05-26 18:02:25")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/6223450_orig.jpg")
i_aint_know.photo.attach(io: file, filename: "i_aint_know.jpg", content_type: "image/jpg")
i_aint_know.save!
ArtworkCollection.create!(artwork: i_aint_know, collection: third_collection)
third_collection.save!

no_dice = Artwork.new(title: "No Dice", price: 4500, user: david_boatwright, medium: painting,
  height: 150, width: 200, year: "2017-01-01", material: "Oil on canvas", end_time: "2023-05-26 18:02:25")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/img-0348_orig.jpeg")
no_dice.photo.attach(io: file, filename: "no_dice.jpg", content_type: "image/jpg")
no_dice.save!
ArtworkCollection.create!(artwork: no_dice, collection: third_collection)
third_collection.save!

puts "Finished David's artwork!"

jesus = Artwork.new(title: "Jesus", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-05-26 18:02:25")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23409048512_2962ce4fa4_b.jpg")
jesus.photo.attach(io: file, filename: "jesus.jpg", content_type: "image/jpg")
jesus.save!
ArtworkCollection.create!(artwork: jesus, collection: third_collection)
third_collection.save!

mark_twain = Artwork.new(title: "Mark Twain", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-05-26 18:02:25")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23517553855_404d8d1ecd_o.jpg")
mark_twain.photo.attach(io: file, filename: "mark_twain.jpg", content_type: "image/jpg")
mark_twain.save!
ArtworkCollection.create!(artwork: mark_twain, collection: third_collection)
third_collection.save!

amelia_earhart = Artwork.new(title: "Amelia Earhart", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-05-26 18:02:25")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/24022323322_78021decae_o.jpg")
amelia_earhart.photo.attach(io: file, filename: "amelia_earhart.jpg", content_type: "image/jpg")
amelia_earhart.save!
ArtworkCollection.create!(artwork: amelia_earhart, collection: third_collection)
third_collection.save!

frida_kahlo = Artwork.new(title: "Frida Kahlo", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-05-26 18:02:25")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23517551885_9466035078_b.jpg")
frida_kahlo.photo.attach(io: file, filename: "frida_kahlo.jpg", content_type: "image/jpg")
frida_kahlo.save!
ArtworkCollection.create!(artwork: frida_kahlo, collection: third_collection)
third_collection.save!

queen_elizabeth = Artwork.new(title: "Queen Elizabeth", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-05-26 18:02:25")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/24064125266_aa13a14a46_o.jpg")
queen_elizabeth.photo.attach(io: file, filename: "queen_elizabeth.jpg", content_type: "image/jpg")
queen_elizabeth.save!
ArtworkCollection.create!(artwork: queen_elizabeth, collection: third_collection)
third_collection.save!

puts "Finished Molly's artwork!"

puts "Creating fake art..."
balcoon = { title: "Balcoon", price: 90, user: alex_atack, medium: photography, height: 77, width: 53, year: "2018-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
nem_kaldi = { title: "Nem Kaldi", price: 450, user: ali_karimi, medium: prints, height: 91, width: 73, year: "2015-01-01",
  material: "Oil, tempera, pastel and crayon on cardboard", end_time: "2023-03-27 23:59:59" }
wechat = { title: "WeChat", price: 150, user: asim_rafiqui, medium: sculpture, height: 74, width: 62,
  year: "2020-01-01", material: "Oil on beaverboard", end_time: "2023-03-27 23:59:59" }
the_boss = { title: "The Boss", price: 510, user: artemis_shaw, medium: painting, height: 84, width: 152, year: "2016-01-01",
  material: "Oil on canvas", end_time: "2023-03-27 23:59:59" }
[balcoon, nem_kaldi, wechat, the_boss].each do |attributes|
  artwork = Artwork.new(attributes)
  file = URI.open("https://source.unsplash.com/random/?art #{attributes[:title]}")
  artwork.photo.attach(io: file, filename: "#{attributes[:title]}.png", content_type: "image/png")
  artwork.save!
  puts "Created #{artwork.title}"
  ArtworkCollection.create!(artwork: artwork, collection: first_collection)
end

balcoon = { title: "Balcoon", price: 90, user: alex_atack, medium: photography, height: 77, width: 53, year: "2018-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
nem_kaldi = { title: "Nem Kaldi", price: 450, user: ali_karimi, medium: prints, height: 91, width: 73, year: "2015-01-01",
  material: "Oil, tempera, pastel and crayon on cardboard", end_time: "2023-03-27 23:59:59" }
wechat = { title: "WeChat", price: 150, user: asim_rafiqui, medium: sculpture, height: 74, width: 62,
  year: "2020-01-01", material: "Oil on beaverboard", end_time: "2023-03-27 23:59:59" }
the_boss = { title: "The Boss", price: 510, user: artemis_shaw, medium: painting, height: 84, width: 152, year: "2016-01-01",
  material: "Oil on canvas", end_time: "2023-03-27 23:59:59" }
[balcoon, nem_kaldi, wechat, the_boss].each do |attributes|
  artwork = Artwork.new(attributes)
  file = URI.open("https://source.unsplash.com/random/?art #{attributes[:title]}")
  artwork.photo.attach(io: file, filename: "#{attributes[:title]}.png", content_type: "image/png")
  artwork.save!
  puts "Created #{artwork.title}"
  ArtworkCollection.create!(artwork: artwork, collection: second_collection)
end

balcoon = { title: "Balcoon", price: 90, user: alex_atack, medium: photography, height: 77, width: 53, year: "2018-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
nem_kaldi = { title: "Nem Kaldi", price: 450, user: ali_karimi, medium: prints, height: 91, width: 73, year: "2015-01-01",
  material: "Oil, tempera, pastel and crayon on cardboard", end_time: "2023-03-27 23:59:59" }
wechat = { title: "WeChat", price: 150, user: asim_rafiqui, medium: sculpture, height: 74, width: 62,
  year: "2020-01-01", material: "Oil on beaverboard", end_time: "2023-03-27 23:59:59" }
the_boss = { title: "The Boss", price: 510, user: artemis_shaw, medium: painting, height: 84, width: 152, year: "2016-01-01",
  material: "Oil on canvas", end_time: "2023-03-27 23:59:59" }
[balcoon, nem_kaldi, wechat, the_boss].each do |attributes|
  artwork = Artwork.new(attributes)
  file = URI.open("https://source.unsplash.com/random/?art #{attributes[:title]}")
  artwork.photo.attach(io: file, filename: "#{attributes[:title]}.png", content_type: "image/png")
  artwork.save!
  puts "Created #{artwork.title}"
  ArtworkCollection.create!(artwork: artwork, collection: fourth_collection)
end
