# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# AUTOMATIC UGLY VERSION

# activitiesrange = %w( Cuisine Informatique Conversation Lecture)

# 10.times do
#   user = User.new(
#     name: Faker::Name.first_name,
#     surname: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     address: "16 villa Gaudelet, 75011",
#     password: "00000000",
#     birthdate: "24/01/1960",
#     description: Faker::Lorem.paragraph(2, false)
#   )
#   user.save!
#   2.times do
#     Activity.create!(
#       name: activitiesrange[rand(0..3)],
#       starting_time: Faker::Date.forward(2).to_s,
#       end_time: (Faker::Date.forward(2) + 4).to_s,
#       price: Faker::Commerce.price.to_i,
#       pictogram_link: "#",
#       description: Faker::Lorem.paragraph(2, false),
#       user_id: user.id
#     )
#   end
# end

# NICE CUSTOM VERSION


@user = User.new(
  email: "e@gmail.com",
  password: "aaaaaaaa",
  name: "Marcel",
  surname: "Georges",
  description: "J'aime manger des nouilles",
  birthdate: "1930-01-12",
  address: "Villa Gaudelet, Paris"
)
@user.save!
Activity.create!(
  name: "Cuisine",
  starting_time: "18/02/2016",
  end_time: "27/02/2016",
  price: 23,
  description: "J'ai besoin d'aide pour cuire beaucoup de nouilles!",
  user_id: @user.id
)
Activity.create!(
  name: "Conversation",
  starting_time: "20/02/2016",
  end_time: "27/02/2016",
  price: 12,
  description: "Je vais bien te faire chier!",
  user_id: @user.id
)

@user = User.new(
  email: "b@gmail.com",
  password: "aaaaaaaa",
  name: "Basile",
  surname: "Toutoublie",
  description: "Love meeting new friends :)",
  birthdate: "1933-06-15",
  address: "Paris"
)
@user.save!
Activity.create!(
  name: "Conversation",
  starting_time: "18/02/2016",
  end_time: "27/02/2016",
  price: 23,
  description: "Je t'aurai oublié demain!",
  user_id: @user.id
)

@user = User.new(
  email: "f@gmail.com",
  password: "aaaaaaaa",
  name: "Lucette",
  surname: "Jeanine",
  description: "J'aime faire de longues siestes  entourés de mes 15 chats",
  birthdate: "1945-06-56",
  address: "Rue du fond du pré"
)
@user.save!
Activity.create!(
  name: "Conversation",
  starting_time: "19/02/2016",
  end_time: "29/02/2016",
  price: 59,
  description: "Venez parler de chats avec moi jusqu'à 18h",
  user_id: @user.id
)

@user = User.new(
  email: "c@gmail.com",
  password: "aaaaaaaa",
  name: "Jeannine",
  surname: "Super",
  description: "J'adore faire la cuisine",
  birthdate: "1938-03-14",
  address: "Maison de retraite les vielles sont cool"
)
@user.save!
Activity.create!(
  name: "Cuisine",
  starting_time: "20/02/2016",
  end_time: "20/02/2016",
  price: 5,
  description: "Participation de 5€ pour un déjeuner du feu de dieu",
  user_id: @user.id
)

@user = User.new(
  email: "a@gmail.com",
  password: "aaaaaaaa",
  name: "Albert",
  surname: "Einstein",
  description: "Let's do some maths together !",
  birthdate: "1922-08-29",
  address: "Krakow"
)
@user.save!
Activity.create!(
  name: "Informatique",
  starting_time: "18/02/2016",
  end_time: "29/02/2016",
  price: 30,
  description: "I don't understand anything about computers. Help ...",
  user_id: @user.id
)
Activity.create!(
  name: "Lecture",
  starting_time: "20/02/2016",
  end_time: "02/03/2016",
  price: 50,
  description: "Hardcore chess player",
  user_id: @user.id
)

@user = User.new(
  email: "d@gmail.com",
  password: "aaaaaaaa",
  name: "Jordy",
  surname: "L'ancien",
  description: "J'ai un prénom de jeune!",
  photo_link: nil,
  birthdate: "1940-03-26",
  address: "Loin d'ici"
)
@user.save!
Activity.create!(
  name: "Informatique",
  starting_time: "19/02/2016",
  end_time: "27/02/2016",
  price: 12,
  description: "Je ne sais pas me servir d'un PC!",
  user_id: @user.id
)

