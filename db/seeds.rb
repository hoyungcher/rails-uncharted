# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
puts 'Deleting entries...'
ThemeAttraction.destroy_all
Attraction.destroy_all
Theme.destroy_all
Locality.destroy_all
Country.destroy_all
Category.destroy_all
AdminUser.destroy_all

puts 'Seeding countries...'
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

puts 'Seeding localities...'
Locality.create([
  { name: 'Seville', country: Country.find_by_name('Spain')},
  { name: 'Barcelona', country: Country.find_by_name('Spain')},
  { name: 'Madrid', country: Country.find_by_name('Spain')},
  { name: 'Valencia', country: Country.find_by_name('Spain')},
  { name: 'Granada', country: Country.find_by_name('Spain')},
  { name: 'Malaga', country: Country.find_by_name('Spain')}
])

puts 'Seeding categories...'
Category.create([
  { name: 'Art' },
  { name: 'Architecture and Design' },
  { name: 'Entertainment'},
  { name: 'Film and TV Shows' },
  { name: 'Food and Drink' },
  { name: 'History and Culture' },
  { name: 'Literature' },
  { name: 'Music and Performing Arts' },
  { name: 'Nature and Landscapes' },
  { name: 'Nightlife' },
  { name: 'Religion' },
  { name: 'Sports and Adventure' }
])

puts 'Seeding themes...'
Theme.create(name: 'Castles', description: 'Relive your fairytales in these castles', category: Category.find_by_name('Architecture and Design'))
Theme.create(name: 'Bauhaus', description: 'Come discover the architecture and history of this groundbreaking movement originating from the 1920s', category: Category.find_by_name('Architecture and Design'))

Theme.create(name: 'Downton Abbey', description: 'Come discover the incredible landscapes from this TV show', category: Category.find_by_name('Film and TV Shows'))
Theme.create(name: 'Game of Thrones', description: 'Come discover the incredible real-life settings of this medieval drama.', category: Category.find_by_name('Film and TV Shows'))
Theme.create(name: 'Lord of The Rings', description: 'Come discover the incredible landscapes from this movie series', category: Category.find_by_name('Film and TV Shows'))
Theme.create(name: 'Outlander', description: 'Come discover the incredible landscapes from this TV show', category: Category.find_by_name('Film and TV Shows'))
Theme.create(name: 'Star Wars', description: 'Come discover the incredible landscapes from this movie series', category: Category.find_by_name('Film and TV Shows'))

Attraction.create(name: 'Plaza de España', description: 'Site of the World Exposition in 1929', locality: Locality.find_by_name('Seville'))
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
