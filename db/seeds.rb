# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  user = User.create(first_name: Faker::LordOfTheRings.character, last_name: Faker::LordOfTheRings.character, description: Faker::OnePiece.quote, email: Faker::Internet.email, age: Faker::Number.between(1, 20))
end

# lier à leurs users ?
10.times do
  city = City.create(city_name: Faker::OnePiece.island, postal_code: Faker::Address.zip_code)
end

# lier à leur auteur ?
20.times do
  gossip = Gossip.create(title: Faker::LordOfTheRings.character, content: Faker::OnePiece.quote, user_id: rand(1..10))
end

# Chaque gossip a au minimum un tag
20.times do
  tag = Tag.create(title: Faker::LordOfTheRings.character)
end

# private message
# 1.times do
#   pm = PrivateMessage.create(content_message: Faker::OnePiece.quote, recipient: Faker::LordOfTheRings.character, sender:Faker::LordOfTheRings.character)
# end
