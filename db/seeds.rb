# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding flats'
10.times do |i|
  puts "Seeding Flat number #{i}"
  Flat.create!(
    name: "#{Faker::Games::Pokemon.name}'s Crib",
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(30..100),
    number_of_guests: rand(1..6)
  )
end
puts 'Done seeding'
