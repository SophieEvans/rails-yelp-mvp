# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

categories = %w[chinese italian japanese french belgian]

puts 'Creating 10 fake posts...'
10.times do
  article = Restaurant.new(
    name: "#{Faker::Movies::StarWars.character}'s #{Faker::Restaurant.name}",
    address: Faker::Address.street_address,
    category: categories.sample
  )
  article.save!
end
puts 'Finished!'
