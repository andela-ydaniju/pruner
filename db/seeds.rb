User.destroy_all
Link.destroy_all

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
  users.each { |user| user.links.create!(name: name) }
end
