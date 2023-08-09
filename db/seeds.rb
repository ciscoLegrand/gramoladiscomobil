# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.find_by(email: "sadmin@test.com")

User.create! email: "sadmin@test.com", password: "test123", role: "admin", confirmed_at: Time.now if user.nil?


# 500.times do
#   date = Faker::Date.between(from: 4.years.ago, to: Date.today)
#   album = Album.create(
#     title: "#{Faker::Name.name} #{Faker::Name.name}",
#     date_event: date,
#     published_at: date + 15.days,
#     password: "test123",
#     emails: [Faker::Internet.email, Faker::Internet.email],
#   )
#   album.update_status!
# end