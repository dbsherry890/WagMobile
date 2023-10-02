# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
BookingType.destroy_all

non_admin_user = User.create!(
    email: "tester@gmail.com", 
    password: "Password", 
    password_confirmation: "Password",
    booking_link: "ttester",
    name: "Tester Account"
)
user = User.create!( 
    email: "dbsherry890@gmail.com", 
    password: "Worldusurp22", 
    password_confirmation: "Worldusurp22",
    booking_link: "dsherry",
    name: "Daniel Sherry",
    admin: 1
)
booking_type_hourly = BookingType.create!(
    color: "#38bdf8",
    description: "Hourly", 
    duration: 60,
    location: "WagMobile",
    name: "hourly",
    payment_required: false,
    price: 7,
    user: user
)
booking_type_halfday = BookingType.create!(
    color: "#fbbf24",
    description: "4 hours", 
    duration: 240,
    location: "WagMobile",
    name: "halfday",
    payment_required: false,
    price: 20,
    user: user
)
booking_type_fullday = BookingType.create!(
    color: "#34d399",
    description: "8 hours", 
    duration: 480,
    location: "WagMobile",
    name: "fullday",
    payment_required: true,
    price: 35,
    user: user
)
# 10.times do |x|
#     Post.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, user_id: User.first.id)
# end