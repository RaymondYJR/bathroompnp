# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bathroom.delete_all
User.delete_all
Booking.delete_all

require 'faker'

10.times do
  password = Faker::Coffee.blend_name
  User.create(
    name: Faker::FamilyGuy.character,
    email: Faker::Internet.email,
    password: password,
    password_confirmation: password
  )
end

puts "Created #{User.count} users!"

User.all.each do |user|
  Bathroom.create(
    user: user,
    shower_condition: Faker::Boolean.boolean,
    address: Faker::Address.full_address,
    price_per_use: [10..500].sample,
    name: Faker::Superhero.name,
    size: [30..100].sample.to_s,
    description: Faker::Lorem.paragraph
  )
end

puts "Created #{Bathroom.count} bathrooms!"

5.times do
  Booking.create(
    user: User.all.sample,
    bathroom: Bathroom.all.sample,
    start_time: Faker::Time.between(DateTime.now - 1, DateTime.now),
    end_time: Faker::Time.forward(1, :all)
  )
end

puts "Created #{Booking.count} bookings!"


