require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i| 
     citie = Citie.create(name: Faker::Address.country,postal_code: Faker::Address.zip_code )
     user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email,age: Faker::Number.number(2),description: Faker::GameOfThrones.quote)
     user.citie = citie
     user.save
     gossip = Gossip.new(title: Faker::Book.title)
     gossip.user = user
     gossip.save
     tag = Tag.create(title: Faker::Food.description)
     tagger = Tagger.new
     tagger.tag = tag
     tagger.gossip = gossip
     tagger.save
end