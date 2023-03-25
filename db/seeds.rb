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
file = URI.open("app/assets/images/F5013424-798C-499B-8492-21531DB91A8B_1_105_c.jpeg")
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
file = URI.open("https://images.squarespace-cdn.com/content/v1/59450d6086e6c048e86a4792/1578636941591-0MC0U10E9OSN6UDKPIOY/Osmosis.jpg?format=1000w")
first_collection.photo.attach(io: file, filename: "first_collection.png", content_type: "image/png")
first_collection.save!
second_collection = Collection.create!(title: "Vibrant Vibes", description: "Craving colour? These artists take a fearless
  approach with their use of colour.")
file = URI.open("https://cdn.booooooom.com/wp-content/uploads/2023/01/Summer-Rockers-2022-15x22-oil-pastel-color-pencil.jpg")
second_collection.photo.attach(io: file, filename: "second_collection.png", content_type: "image/png")
second_collection.save!
third_collection = Collection.create!(title: "Bonafide Artists", description: "These artists have been vetted by the art market, however their sales on Artichoke are independent.")
file = URI.open("https://img.freepik.com/free-vector/flat-design-matisse-style-illustration_23-2149556378.jpg?w=2000")
third_collection.photo.attach(io: file, filename: "third_collection.png", content_type: "image/png")
third_collection.save!
fourth_collection = Collection.create!(title: "Decorative Yet Evocative", description: "Art that feeds the mind as well as the eyes.")
file = URI.open("https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Fsundaytimes%2Fprod%2Fweb%2Fbin%2F69e8da48-cc00-11e9-a5c5-eeafb66e7c98.jpg?crop=2667%2C1500%2C0%2C0")
fourth_collection.photo.attach(io: file, filename: "fourth_collection.png", content_type: "image/png")
fourth_collection.save!

puts "Creating media..."

painting = Medium.create!(medium: "Painting")
photography = Medium.create!(medium: "Photography")
multimedia = Medium.create!(medium: "Multi-media")
sculpture = Medium.create!(medium: "Sculpture")
prints = Medium.create!(medium: "Print")

puts "Creating real art..."

funk = Artwork.new(title: "Funk (Hardest Working Man)", price: 5000, user: david_boatwright, medium: painting,
height: 150, width: 300, year: "2020-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/9932845_orig.jpg")
funk.photo.attach(io: file, filename: "funk.jpg", content_type: "image/jpg")
funk.save!
ArtworkCollection.create!(artwork: funk, collection: third_collection)
third_collection.save!

eleven_dollars = Artwork.new(title: "Eleven Dollars", price: 5000, user: david_boatwright, medium: painting,
  height: 150, width: 300, year: "2020-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/2947265_orig.jpg")
eleven_dollars.photo.attach(io: file, filename: "eleven_dollars.jpg", content_type: "image/jpg")
eleven_dollars.save!
ArtworkCollection.create!(artwork: eleven_dollars, collection: third_collection)
third_collection.save!

six_dollars = Artwork.new(title: "Six Dollars", price: 1000, user: david_boatwright, medium: painting,
  height: 150, width: 300, year: "2020-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/9086013_orig.jpg")
six_dollars.photo.attach(io: file, filename: "six_dollars.jpg", content_type: "image/jpg")
six_dollars.save!
ArtworkCollection.create!(artwork: six_dollars, collection: third_collection)
third_collection.save!

i_aint_know = Artwork.new(title: "I Ain't Know", price: 500, user: david_boatwright, medium: painting,
  height: 75, width: 100, year: "2020-01-01", material: "Limited edition giclee print", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/6223450_orig.jpg")
i_aint_know.photo.attach(io: file, filename: "i_aint_know.jpg", content_type: "image/jpg")
i_aint_know.save!
ArtworkCollection.create!(artwork: i_aint_know, collection: third_collection)
third_collection.save!

no_dice = Artwork.new(title: "No Dice", price: 4500, user: david_boatwright, medium: painting,
  height: 150, width: 200, year: "2017-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/img-0348_orig.jpeg")
no_dice.photo.attach(io: file, filename: "no_dice.jpg", content_type: "image/jpg")
no_dice.save!
ArtworkCollection.create!(artwork: no_dice, collection: third_collection)
third_collection.save!

i_got_soul = Artwork.new(title: "I Got Soul", price: 5500, user: david_boatwright, medium: painting,
  height: 200, width: 150, year: "2016-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/i-got-soul_orig.jpg")
i_got_soul.photo.attach(io: file, filename: "i_got_soul.jpg", content_type: "image/jpg")
i_got_soul.save!
ArtworkCollection.create!(artwork: i_got_soul, collection: third_collection)
third_collection.save!

x_ray_spex = Artwork.new(title: "X-Ray Spex", price: 5250, user: david_boatwright, medium: painting,
  height: 200, width: 150, year: "2016-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/7415878_orig.jpg")
x_ray_spex.photo.attach(io: file, filename: "x_ray_spex.jpg", content_type: "image/jpg")
x_ray_spex.save!
ArtworkCollection.create!(artwork: x_ray_spex, collection: third_collection)
third_collection.save!

tiny_tango = Artwork.new(title: "Tiny Tango", price: 7500, user: david_boatwright, medium: painting,
  height: 200, width: 150, year: "2016-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/6811936_orig.jpg")
tiny_tango.photo.attach(io: file, filename: "tiny_tango.jpg", content_type: "image/jpg")
tiny_tango.save!
ArtworkCollection.create!(artwork: tiny_tango, collection: third_collection)
third_collection.save!

poppy = Artwork.new(title: "RIP Poppy", price: 7500, user: david_boatwright, medium: painting,
  height: 200, width: 150, year: "2016-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/3356086_orig.jpg")
poppy.photo.attach(io: file, filename: "poppy.jpg", content_type: "image/jpg")
poppy.save!
ArtworkCollection.create!(artwork: poppy, collection: third_collection)
third_collection.save!

johnson = Artwork.new(title: "Robert Johnson", price: 7000, user: david_boatwright, medium: painting,
  height: 200, width: 150, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/4763901_orig.jpg")
johnson.photo.attach(io: file, filename: "johnson.jpg", content_type: "image/jpg")
johnson.save!
ArtworkCollection.create!(artwork: johnson, collection: third_collection)
third_collection.save!

miss_folly_beach = Artwork.new(title: "Miss Folly Beach", price: 7000, user: david_boatwright, medium: painting,
  height: 200, width: 150, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/105097_orig.jpg")
miss_folly_beach.photo.attach(io: file, filename: "miss_folly_beach.jpg", content_type: "image/jpg")
miss_folly_beach.save!
ArtworkCollection.create!(artwork: miss_folly_beach, collection: third_collection)
third_collection.save!

half_james_half_elvis = Artwork.new(title: "Half James Half Elvis", price: 4500, user: david_boatwright, medium: painting,
  height: 250, width: 140, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/5508370_orig.jpg")
half_james_half_elvis.photo.attach(io: file, filename: "half_james_half_elvis.jpg", content_type: "image/jpg")
half_james_half_elvis.save!
ArtworkCollection.create!(artwork: half_james_half_elvis, collection: third_collection)
third_collection.save!

strange_girlfriends = Artwork.new(title: "Strange Girlfriends", price: 450, user: david_boatwright, medium: painting,
  height: 140, width: 300, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/8387290_orig.jpg")
strange_girlfriends.photo.attach(io: file, filename: "strange_girlfriends.jpg", content_type: "image/jpg")
strange_girlfriends.save!
ArtworkCollection.create!(artwork: strange_girlfriends, collection: third_collection)
third_collection.save!

twisted_guy = Artwork.new(title: "Twisted Guy", price: 4000, user: david_boatwright, medium: painting,
  height: 170, width: 120, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/7648471_orig.jpg")
twisted_guy.photo.attach(io: file, filename: "twisted_guy.jpg", content_type: "image/jpg")
twisted_guy.save!
ArtworkCollection.create!(artwork: twisted_guy, collection: third_collection)
third_collection.save!

cairo_den = Artwork.new(title: "Cairo", price: 4000, user: david_boatwright, medium: painting,
  height: 140, width: 270, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/6306290_orig.jpg")
cairo_den.photo.attach(io: file, filename: "cairo_den.jpg", content_type: "image/jpg")
cairo_den.save!
ArtworkCollection.create!(artwork: cairo_den, collection: third_collection)
third_collection.save!

ma_naugha_ma_hyde = Artwork.new(title: "Ma Naugha Ma Hyde", price: 450, user: david_boatwright, medium: painting,
  height: 170, width: 140, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/2721838_orig.jpg")
ma_naugha_ma_hyde.photo.attach(io: file, filename: "ma_naugha_ma_hyde.jpg", content_type: "image/jpg")
ma_naugha_ma_hyde.save!
ArtworkCollection.create!(artwork: ma_naugha_ma_hyde, collection: third_collection)
third_collection.save!

cuban_gator_gal = Artwork.new(title: "Cuban Gator Gal", price: 450, user: david_boatwright, medium: painting,
  height: 140, width: 170, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/3180478_orig.jpg")
cuban_gator_gal.photo.attach(io: file, filename: "cuban_gator_gal.jpg", content_type: "image/jpg")
cuban_gator_gal.save!
ArtworkCollection.create!(artwork: cuban_gator_gal, collection: third_collection)
third_collection.save!

blind_fold = Artwork.new(title: "Blindfolded", price: 450, user: david_boatwright, medium: painting,
  height: 200, width: 150, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/8687728_orig.jpg")
blind_fold.photo.attach(io: file, filename: "blind_fold.jpg", content_type: "image/jpg")
blind_fold.save!
ArtworkCollection.create!(artwork: blind_fold, collection: third_collection)
third_collection.save!

in_romance_we_lust = Artwork.new(title: "In Romance We Lust", price: 450, user: david_boatwright, medium: painting,
  height: 150, width: 210, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/8111634_orig.jpg")
in_romance_we_lust.photo.attach(io: file, filename: "in_romance_we_lust.jpg", content_type: "image/jpg")
in_romance_we_lust.save!
ArtworkCollection.create!(artwork: in_romance_we_lust, collection: third_collection)
third_collection.save!

golf_swing = Artwork.new(title: "Gold Swing", price: 5000, user: david_boatwright, medium: painting,
  height: 200, width: 150, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/8677441_orig.jpg")
golf_swing.photo.attach(io: file, filename: "golf_swing.jpg", content_type: "image/jpg")
golf_swing.save!
ArtworkCollection.create!(artwork: golf_swing, collection: third_collection)
third_collection.save!

uneeda_biscuit = Artwork.new(title: "Uneeda Biscuit", price: 5000, user: david_boatwright, medium: painting,
  height: 200, width: 150, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/1708473_orig.jpg")
uneeda_biscuit.photo.attach(io: file, filename: "uneeda_biscuit.jpg", content_type: "image/jpg")
uneeda_biscuit.save!
ArtworkCollection.create!(artwork: uneeda_biscuit, collection: third_collection)
third_collection.save!

shark_tastic = Artwork.new(title: "Shark Attack", price: 450, user: david_boatwright, medium: painting,
  height: 150, width: 150, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/img-0741_orig.jpeg")
shark_tastic.photo.attach(io: file, filename: "shark_tastic.jpg", content_type: "image/jpg")
shark_tastic.save!
ArtworkCollection.create!(artwork: shark_tastic, collection: third_collection)
third_collection.save!

big_mama = Artwork.new(title: "Big Mama", price: 450, user: david_boatwright, medium: painting,
  height: 200, width: 150, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/9113725_orig.jpg")
big_mama.photo.attach(io: file, filename: "big_mama.jpg", content_type: "image/jpg")
big_mama.save!
ArtworkCollection.create!(artwork: big_mama, collection: third_collection)
third_collection.save!

good_luck = Artwork.new(title: "Good Luck", price: 2700, user: david_boatwright, medium: painting,
  height: 200, width: 130, year: "2019-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59")
file = URI.open("http://www.luckyboyart.com/uploads/6/4/9/5/64954289/8336411_orig.jpg")
good_luck.photo.attach(io: file, filename: "good_luck.jpg", content_type: "image/jpg")
good_luck.save!
ArtworkCollection.create!(artwork: good_luck, collection: third_collection)
third_collection.save!

puts "Finished David's artwork!"

jesus = Artwork.new(title: "Jesus", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23409048512_2962ce4fa4_b.jpg")
jesus.photo.attach(io: file, filename: "jesus.jpg", content_type: "image/jpg")
jesus.save!
ArtworkCollection.create!(artwork: jesus, collection: third_collection)
third_collection.save!

mark_twain = Artwork.new(title: "Mark Twain", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23517553855_404d8d1ecd_o.jpg")
mark_twain.photo.attach(io: file, filename: "mark_twain.jpg", content_type: "image/jpg")
mark_twain.save!
ArtworkCollection.create!(artwork: mark_twain, collection: third_collection)
third_collection.save!

amelia_earhart = Artwork.new(title: "Amelia Earhart", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/24022323322_78021decae_o.jpg")
amelia_earhart.photo.attach(io: file, filename: "amelia_earhart.jpg", content_type: "image/jpg")
amelia_earhart.save!
ArtworkCollection.create!(artwork: amelia_earhart, collection: third_collection)
third_collection.save!

frida_kahlo = Artwork.new(title: "Frida Kahlo", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23517551885_9466035078_b.jpg")
frida_kahlo.photo.attach(io: file, filename: "frida_kahlo.jpg", content_type: "image/jpg")
frida_kahlo.save!
ArtworkCollection.create!(artwork: frida_kahlo, collection: third_collection)
third_collection.save!

queen_elizabeth = Artwork.new(title: "Queen Elizabeth", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/24064125266_aa13a14a46_o.jpg")
queen_elizabeth.photo.attach(io: file, filename: "queen_elizabeth.jpg", content_type: "image/jpg")
queen_elizabeth.save!
ArtworkCollection.create!(artwork: queen_elizabeth, collection: third_collection)
third_collection.save!

john_wayne = Artwork.new(title: "John Wayne", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/30654744101_caf0081a42_b.jpg")
john_wayne.photo.attach(io: file, filename: "john_wayne.jpg", content_type: "image/jpg")
john_wayne.save!
ArtworkCollection.create!(artwork: john_wayne, collection: third_collection)
third_collection.save!

willie_nelson = Artwork.new(title: "Willie Nelson", price: 7500, user: molly_b_right, medium: multimedia,
  height: 150, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/24104287706_c98434d43c_o.jpg")
willie_nelson.photo.attach(io: file, filename: "willie_nelson.jpg", content_type: "image/jpg")
willie_nelson.save!
ArtworkCollection.create!(artwork: willie_nelson, collection: third_collection)
third_collection.save!

lucille_ball = Artwork.new(title: "Lucille Ball", price: 7500, user: molly_b_right, medium: multimedia,
  height: 150, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23170900429_d3c8d76880_o.jpg")
lucille_ball.photo.attach(io: file, filename: "lucille_ball.jpg", content_type: "image/jpg")
lucille_ball.save!
ArtworkCollection.create!(artwork: lucille_ball, collection: third_collection)
third_collection.save!

maya_angalou = Artwork.new(title: "Maya Angelou", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23409051832_d85b322e08_o.jpg")
maya_angalou.photo.attach(io: file, filename: "maya_angalou.jpg", content_type: "image/jpg")
maya_angalou.save!
ArtworkCollection.create!(artwork: maya_angalou, collection: third_collection)
third_collection.save!

etta_james = Artwork.new(title: "Etta James", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/24031912749_3fc6271e26_b.jpg")
etta_james.photo.attach(io: file, filename: "etta_james.jpg", content_type: "image/jpg")
etta_james.save!
ArtworkCollection.create!(artwork: etta_james, collection: third_collection)
third_collection.save!

andy_warhol = Artwork.new(title: "Andy Warhol", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/30654772691_63651f1edb_b.jpg")
andy_warhol.photo.attach(io: file, filename: "andy_warhol.jpg", content_type: "image/jpg")
andy_warhol.save!
ArtworkCollection.create!(artwork: andy_warhol, collection: third_collection)
third_collection.save!

sammy_davis_jr = Artwork.new(title: "Sammy Davis Jr", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/24536231466_213ee5e03b_b.jpg")
sammy_davis_jr.photo.attach(io: file, filename: "sammy_davis_jr.jpg", content_type: "image/jpg")
sammy_davis_jr.save!
ArtworkCollection.create!(artwork: sammy_davis_jr, collection: third_collection)
third_collection.save!

peace_love_buddha = Artwork.new(title: "Buddha", price: 4500, user: molly_b_right, medium: multimedia,
  height: 150, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/22890414673_6d5c32cfec_o.jpg")
peace_love_buddha.photo.attach(io: file, filename: "peace_love_buddha.jpg", content_type: "image/jpg")
peace_love_buddha.save!
ArtworkCollection.create!(artwork: peace_love_buddha, collection: third_collection)
third_collection.save!

albert_einstein = Artwork.new(title: "Albert Einstein", price: 5500, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23517546625_936886a7cd_b.jpg")
albert_einstein.photo.attach(io: file, filename: "albert_einstein.jpg", content_type: "image/jpg")
albert_einstein.save!
ArtworkCollection.create!(artwork: albert_einstein, collection: third_collection)
third_collection.save!

salvator_dali = Artwork.new(title: "Salvator Dali", price: 6000, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/22889248194_46ea1fc338_b.jpg")
salvator_dali.photo.attach(io: file, filename: "salvator_dali.jpg", content_type: "image/jpg")
salvator_dali.save!
ArtworkCollection.create!(artwork: salvator_dali, collection: third_collection)
third_collection.save!

magestic_baboon = Artwork.new(title: "Baboon", price: 6000, user: molly_b_right, medium: multimedia,
  height: 200, width: 150, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23512438916_afdb544200_o.jpg")
magestic_baboon.photo.attach(io: file, filename: "magestic_baboon.jpg", content_type: "image/jpg")
magestic_baboon.save!
ArtworkCollection.create!(artwork: magestic_baboon, collection: third_collection)
third_collection.save!

sitting_bull = Artwork.new(title: "Sitting Bull", price: 7500, user: molly_b_right, medium: multimedia,
  height: 250, width: 160, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/30654637741_072041490b_b.jpg")
sitting_bull.photo.attach(io: file, filename: "sitting_bull.jpg", content_type: "image/jpg")
sitting_bull.save!
ArtworkCollection.create!(artwork: sitting_bull, collection: third_collection)
third_collection.save!

audrey_hepburn = Artwork.new(title: "Sitting Bull", price: 7500, user: molly_b_right, medium: multimedia,
  height: 200, width: 130, year: "2017-01-01", material: "Vintage bottlecap on metal", end_time: "2023-03-28 23:59:59")
file = URI.open("https://mollybright.com/wp-content/uploads/2022/10/23491436716_a47b48a9ef_b.jpg")
audrey_hepburn.photo.attach(io: file, filename: "audrey_hepburn.jpg", content_type: "image/jpg")
audrey_hepburn.save!
ArtworkCollection.create!(artwork: audrey_hepburn, collection: third_collection)
third_collection.save!

puts "Finished Molly's artwork!"

puts "Creating fake art for New & Noteworthy..."
balcoon = { title: "Balcoon", price: 90, user: alex_atack, medium: photography, height: 77, width: 53, year: "2018-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
nem_kaldi = { title: "Nem Kaldi", price: 450, user: ali_karimi, medium: prints, height: 91, width: 73, year: "2015-01-01",
  material: "Oil, tempera, pastel on wood", end_time: "2023-03-27 23:59:59" }
wechat = { title: "WeChat", price: 150, user: asim_rafiqui, medium: sculpture, height: 74, width: 62,
  year: "2020-01-01", material: "Oil on beaverboard", end_time: "2023-03-27 23:59:59" }
the_boss = { title: "The Boss", price: 510, user: artemis_shaw, medium: painting, height: 84, width: 152, year: "2016-01-01",
  material: "Oil on canvas", end_time: "2023-03-27 23:59:59" }
lau_ma_al_mahaba = { title: "Lau Ma al-Mahaba", price: 90, user: dima_srouji, medium: photography, height: 77, width: 53, year: "2018-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
temps_de_pluja = { title: "Temps de Pluja", price: 450, user: dixie_dunbar, medium: prints, height: 91, width: 73, year: "2015-01-01",
  material: "Oil, tempera, pastel and crayon on cardboard", end_time: "2023-03-27 23:59:59" }
akhaduhu_mini_urah = { title: "Akhaduhu Mini Urah", price: 150, user: alex_atack, medium: sculpture, height: 74, width: 62,
  year: "2020-01-01", material: "Oil on wood", end_time: "2023-03-27 23:59:59" }
nellacqua = { title: "Nell'acqua della chiara fontana", price: 510, user: artemis_shaw, medium: painting, height: 84, width: 152, year: "2016-01-01",
  material: "Oil on canvas", end_time: "2023-03-27 23:59:59" }
[balcoon, nem_kaldi, wechat, the_boss, lau_ma_al_mahaba, temps_de_pluja, akhaduhu_mini_urah, nellacqua].each do |attributes|
  artwork = Artwork.new(attributes)
  file = URI.open("https://source.unsplash.com/random/?art #{attributes[:title]}")
  artwork.photo.attach(io: file, filename: "#{attributes[:title]}.png", content_type: "image/png")
  artwork.save!
  puts "Created #{artwork.title}"
  ArtworkCollection.create!(artwork: artwork, collection: first_collection)
end

puts "Creating fake art for Vibrant Vibes..."
ikimiz = { title: "Ikimiz bir Fidaniz", price: 90, user: alex_atack, medium: photography, height: 77, width: 53, year: "2018-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
nonstop = { title: "Nonstop", price: 450, user: ali_karimi, medium: prints, height: 91, width: 73, year: "2015-01-01",
  material: "Oil, tempera, pastel on wood", end_time: "2023-03-27 23:59:59" }
oi_sermuksnio = { title: "Oi Sermuksnio", price: 150, user: asim_rafiqui, medium: sculpture, height: 74, width: 62,
  year: "2020-01-01", material: "Oil on beaverboard", end_time: "2023-03-27 23:59:59" }
a_paris = { title: "A Paris", price: 510, user: artemis_shaw, medium: painting, height: 84, width: 152, year: "2016-01-01",
  material: "Oil on canvas", end_time: "2023-03-27 23:59:59" }
paloma_negra = { title: "Paloma Negra", price: 90, user: dima_srouji, medium: photography, height: 77, width: 53, year: "2018-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
wind_of_change = { title: "Wind of Change", price: 450, user: dixie_dunbar, medium: prints, height: 91, width: 73, year: "2015-01-01",
  material: "Oil, tempera, pastel on wood", end_time: "2023-03-27 23:59:59" }
chal_akela = { title: "Chal Akela", price: 150, user: alex_atack, medium: sculpture, height: 74, width: 62,
  year: "2020-01-01", material: "Oil on wood", end_time: "2023-03-27 23:59:59" }
mafatshi_leh = { title: "Mafatshi Leh", price: 510, user: artemis_shaw, medium: painting, height: 84, width: 152, year: "2016-01-01",
  material: "Oil on canvas", end_time: "2023-03-27 23:59:59" }
[ikimiz, nonstop, oi_sermuksnio, a_paris, paloma_negra, wind_of_change, chal_akela, mafatshi_leh].each do |attributes|
  artwork = Artwork.new(attributes)
  file = URI.open("https://source.unsplash.com/random/?color #{attributes[:title]}")
  artwork.photo.attach(io: file, filename: "#{attributes[:title]}.png", content_type: "image/png")
  artwork.save!
  puts "Created #{artwork.title}"
  ArtworkCollection.create!(artwork: artwork, collection: second_collection)
end

puts "Creating fake art for Decorative Yet Evocative..."
zum_zum = { title: "Zum-Zum", price: 90, user: alex_atack, medium: photography, height: 77, width: 53, year: "2018-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
pochelovat = { title: "Pochelovat", price: 450, user: ali_karimi, medium: prints, height: 91, width: 73, year: "2015-01-01",
  material: "Oil, tempera, pastel on wood", end_time: "2023-03-27 23:59:59" }
howzat = { title: "Howzat", price: 150, user: asim_rafiqui, medium: sculpture, height: 74, width: 62,
  year: "2020-01-01", material: "Oil on wood", end_time: "2023-03-27 23:59:59" }
sugar_man = { title: "Sugar Man", price: 510, user: artemis_shaw, medium: painting, height: 84, width: 152, year: "2016-01-01",
  material: "Oil on canvas", end_time: "2023-03-27 23:59:59" }
what_a_life = { title: "What A Life", price: 90, user: dima_srouji, medium: photography, height: 77, width: 53, year: "2018-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
mano = { title: "MANO", price: 450, user: dixie_dunbar, medium: prints, height: 91, width: 73, year: "2015-01-01",
  material: "Oil, tempera, pastel on wood", end_time: "2023-03-27 23:59:59" }
tgoul_maaraft = { title: "Tgoul Maaraft", price: 150, user: alex_atack, medium: sculpture, height: 74, width: 62,
  year: "2020-01-01", material: "Oil on canvas", end_time: "2023-03-27 23:59:59" }
carolans = { title: "Carolan's Air", price: 510, user: artemis_shaw, medium: painting, height: 84, width: 152, year: "2016-01-01",
  material: "Oil on canvas", end_time: "2023-03-27 23:59:59" }
[zum_zum, pochelovat, howzat, sugar_man, what_a_life, mano, tgoul_maaraft, carolans].each do |attributes|
  artwork = Artwork.new(attributes)
  file = URI.open("https://source.unsplash.com/random/?art #{attributes[:title]}")
  artwork.photo.attach(io: file, filename: "#{attributes[:title]}.png", content_type: "image/png")
  artwork.save!
  puts "Created #{artwork.title}"
  ArtworkCollection.create!(artwork: artwork, collection: fourth_collection)
end

puts "Creating fake photography generally..."
calypso_queen = { title: "Calypso Queen", price: 90, user: alex_atack, medium: photography, height: 77, width: 53, year: "2018-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
kitoko = { title: "kitoko", price: 450, user: ali_karimi, medium: photography, height: 91, width: 73, year: "2015-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
daftari_hili = { title: "Daftari Hili", price: 150, user: asim_rafiqui, medium: photography, height: 74, width: 62,
  year: "2020-01-01", material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
falafel = { title: "Falafel", price: 490, user: artemis_shaw, medium: photography, height: 84, width: 152, year: "2016-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
love_you_madly = { title: "Love You Madly", price: 90, user: dima_srouji, medium: photography, height: 77, width: 53, year: "2018-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
never_there = { title: "Never There", price: 450, user: dixie_dunbar, medium: photography, height: 91, width: 73, year: "2015-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
roi_lion = { title: "Roi Lion", price: 150, user: alex_atack, medium: photography, height: 74, width: 62,
  year: "2020-01-01", material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
psychedelic_woman = { title: "Psychedelic Woman", price: 490, user: artemis_shaw, medium: photography, height: 84, width: 152, year: "2016-01-01",
  material: "Giclee print on Hahnemuhle", end_time: "2023-03-27 23:59:59" }
[calypso_queen, kitoko, daftari_hili, falafel, love_you_madly, never_there, roi_lion, psychedelic_woman].each do |attributes|
  artwork = Artwork.new(attributes)
  file = URI.open("https://source.unsplash.com/random/?fine%20art%20photography #{attributes[:title]}")
  artwork.photo.attach(io: file, filename: "#{attributes[:title]}.png", content_type: "image/png")
  artwork.save!
  puts "Created #{artwork.title}"
  ArtworkCollection.create!(artwork: artwork, collection: fourth_collection)
end
