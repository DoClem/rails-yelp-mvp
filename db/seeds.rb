# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0102505645", category:"chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number:"0908070405", category:"japanese"}
belgium = {name: "Belgium", address: "54 rue gordon", phone_number: "0541245645", category:"belgian"}
foufou = {name: "Foufou", address: "85 avenue thomas", phone_number: "5412505645", category:"french"}
pioupoiu = {name: "Pioupoiu", address: "25 rue jhonson", phone_number: "0102030405", category:"japanese"}


[dishoom, pizza_east, belgium, foufou, pioupoiu].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
