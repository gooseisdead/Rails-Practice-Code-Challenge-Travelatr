# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Blogger.destroy_all
Destination.destroy_all
Post.destroy_all

30.times do 
  Destination.create({
    name: Faker::GameOfThrones.city,
    country: Faker::Address.country
  })
end


10.times do
  blogger = Blogger.create({
    name: Faker::Name.name,
    bio: Faker::Hipster.paragraph,
    age: (13..100).to_a.sample
  })
end

  # (2..6).to_a.sample.times do 
20.times do
    Post.create({
      title: Faker::Hipster.sentence(3),
      content: Faker::Hipster.paragraphs(4),
      likes: 0,
      blogger_id: Blogger.all.sample.id,
      destination_id: Destination.all.sample.id
    })
end
