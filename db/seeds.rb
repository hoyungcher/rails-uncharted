# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
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
