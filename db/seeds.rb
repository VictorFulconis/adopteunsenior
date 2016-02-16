# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do
  user = User.new(
    name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "00000000",
    birthdate: "24/01/1960",
    description: Faker::Lorem.paragraph(2, false)
  )
  user.save!
  2.times do
    Activity.create!(
      name: Faker::App.name,
      starting_time: Faker::Date.forward(2).to_s,
      end_time: (Faker::Date.forward(2) + 4).to_s,
      price: Faker::Commerce.price.to_i,
      pictogram_link: "#",
      description: Faker::Lorem.paragraph(2, false),
      user_id: user.id
    )
  end
end

1.times do
  user = User.new(
    name: "Papy",
    surname: "Marcel",
    email: "papy.marcel@jaimelesjeunes.fr",
    password: "00000000",
    birthdate: "24/01/1930",
    description: "Jovial et accueillant, je pratique ma passion avec assiduité!"
  )
  user.save!
  Activity.create!(
    name: "Branlette",
    starting_time: "20/02/2016",
    end_time: "24/02/2016",
    price: 12,
    pictogram_link: "#",
    description: "Sportif et détendant, un plaisir de tous les jours",
    user_id: user.id
  )
end
