# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "kkv",
    email: "kkv@gmail.com",
    password:              "kkkkkk",
    password_confirmation: "kkkkkk",
    admin: true)

99.times do |n|
name  = Faker::Name.name
email = "kkv#{n+1}@gmail.com"
password = "kkkkkk"
puts User.create!(name:  name,
      email: email,
      password:              password,
      password_confirmation: password)

end