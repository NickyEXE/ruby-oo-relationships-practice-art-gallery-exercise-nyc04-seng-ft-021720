require_relative '../config/environment.rb'

# Seedfile
louvre = Gallery.new("Louvre", "Paris")
bross = Artist.new("Bob Ross", 40)
dpp = Painting.new("Dogs Playing Poker", 1000, bross, louvre)
puts "Painting.all works?"
puts Painting.all.length == 1
happy_little_trees = Painting.new("Happy Little Trees", 2000, bross, louvre)
puts "Painting.total_price works?"
puts Painting.total_price == 3000
puts "Artist.all works?"
puts Artist.all.length == 1
bross.paintings
puts "Artist#paintings"
puts bross.paintings.first == dpp
puts bross.paintings.length == 2
gogh = Artist.new("Van Gogh", 20)
moma = Gallery.new("Museum of Modern Art", "New York City")
selfie = Painting.new("Portrait of the Artist as a Young Man", 3000, gogh, moma)
night = Painting.new("Starry Night", 5000, gogh, louvre)
puts "Galleries works?"
puts bross.galleries.length == 1
puts gogh.galleries.length == 2
puts "Artist#cities works?"
puts gogh.cities == ["New York City", "Paris"]
sunflowers = gogh.create_painting("Sunflowers", 6000, moma)

binding.pry

puts "Bob Ross rules."
