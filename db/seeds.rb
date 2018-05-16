# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Creating 5 fake restaurants..."
5.times do
  restaurant = Restaurant.new(
    name: Faker::Name.name,
    address: Faker::RickAndMorty.location,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
    restaurant.save!
    3.times do
      review = Review.new(
        content: Faker::Friends.quote,
        rating: (0..5).to_a.sample,
        restaurant_id: restaurant.id
        )
      review.save!
    end
end
puts "Done!"

