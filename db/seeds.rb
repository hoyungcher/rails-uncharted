# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
puts "Deleting entries..."
Country.destroy_all
Category.destroy_all

puts "Seeding countries..."
filepath = "#{Rails.root}/countries.json"
serialized_countries = File.read(filepath)
countries = JSON.parse(serialized_countries)
countries.each do |country|
  Country.create(
    name: country['name'],
    iso_3166_1_alpha2: country['alpha2'].upcase,
    iso_3166_1_alpha3: country['alpha3'].upcase,
    iso_3166_1_numeric: country['id'].to_s
  )
end

puts "Seeding categories..."
categories = Category.create([
  {name: 'Art'},
  {name: 'Architecture & Design'},
  {name: 'Film & TV Shows'},
  {name: 'Food & Drink'},
  {name: 'History & Culture'},
  {name: 'Literature'},
  {name: 'Music & Performing Arts'},
  {name: 'Nature & Landscapes'},
  {name: 'Nightlife'},
  {name: 'Religion'},
  {name: 'Sports & Adventure'}
])


