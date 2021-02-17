# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Clearing database"
Flat.destroy_all

puts "Generating flats.."
5.times do
  Flat.create(
    name: Faker::FunnyName.two_word_name,
    address: Faker::Address.full_address,
    description: Faker::Books::Lovecraft.sentence,
    price_per_night: [10, 15, 50, 65, 150].sample,
    number_of_guests: [1, 2, 3, 4, 5, 6, 7, 8].sample
  )
end
