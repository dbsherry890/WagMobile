# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create( email: "dbsherry890@gmail.com", password: "Worldusurp22", password_confirmation: "Worldusurp22")

10.times do |x|
    Post.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, user_id: User.first.id)
end