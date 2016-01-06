User.destroy_all
Link.destroy_all

require "uri"

users = User.create([
  {
    username: "Chicago",
    email: "a@b.c",
    password: "alphabet",
    password_confirmation: "alphabet"
  }
])

20.times do
  name = Faker::Internet.url
  users.each do |user|
    link = user.links.build
    link.name = name
    link.user_id = user.id
    link.save
  end
end
