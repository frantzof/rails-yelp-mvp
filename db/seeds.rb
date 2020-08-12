# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "+330123434" }
pizzayolo =  { name: "Pizzayolo", address: "3 villa Gaudelet Paris", category: "italian", phone_number: "+330123434" }
big_mamma = { name: "Big Mamma", address: "123 rue des 3 Rois Lyon",category: "japanese", phone_number: "+330123434" }
easter =  { name: "Easter", address: "56A Shoreditch High St, Marseille", category: "french", phone_number: "+330123434" }
lila = { name: "Lila", address: "45 rue St Maur Nantes", category: "belgian", phone_number: "+330123434" }

[ dishoom, pizzayolo, big_mamma, easter, lila ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
