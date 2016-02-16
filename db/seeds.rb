# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do
  User.create!(
    name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "00000000",
    birthdate: "24/01/1960",
    description: Faker::Lorem.paragraph(2, false)
    )
end
