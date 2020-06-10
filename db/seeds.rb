# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
puts 'Deleting entries...'
Country.destroy_all
Category.destroy_all
Theme.destroy_all

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
Theme.create(name: 'Downton Abbey', description: 'Come discover the incredible landscapes from this TV show', category: Category.find_by_name('Film and TV Shows'))
Theme.create(name: 'Game of Thrones', description: 'Come discover the incredible real-life settings of this medieval drama.', category: Category.find_by_name('Film and TV Shows'))
Theme.create(name: 'Lord of The Rings', description: 'Come discover the incredible landscapes from this movie series', category: Category.find_by_name('Film and TV Shows'))
Theme.create(name: 'Outlander', description: 'Come discover the incredible landscapes from this TV show', category: Category.find_by_name('Film and TV Shows'))
Theme.create(name: 'Star Wars', description: 'Come discover the incredible landscapes from this movie series', category: Category.find_by_name('Film and TV Shows'))
