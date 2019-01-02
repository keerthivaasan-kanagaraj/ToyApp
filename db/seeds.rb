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
    admin: true,
    activated: true,
    activated_at: Time.zone.now)

10.times do |n|
name  = Faker::Name.name
email = "kkv#{n+1}@gmail.com"
password = "kkkkkk"
puts User.create!(name:  name,
      email: email,
      password:              password,
      password_confirmation: password,
      activated: true,
      activated_at: Time.zone.now)

end
users = User.order(:created_at).take(3)
3.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

# Following relationships
users = User.all
user  = users.first
following = users[2..7]
followers = users[3..6]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }