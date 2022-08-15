# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
Pet.destroy_all
Shelter.destroy_all
User.destroy_all

user_1 = User.new(email: "max.müller@gmx.de", user_name: "Max Müller", password: "test1234")
user_1.save!

user_2 = User.new(email: "daniel.hamm@gmx.de", user_name: "Daniel Hamm", password: "tet56474st")
user_2.save!



shelter_1 = Shelter.new(name: "Happy Turtles", location: "Tokyo", user: user_1)
shelter_1.save!
shelter_2 = Shelter.new(name: "Sad Whales", location: "Sahara", user: user_2)
shelter_2.save!


pet_1 = Pet.new(name: "Günther", species: "Turtle", gender: "undefined", age: 220, availability: "available", price: 9.99, shelter: shelter_1)
pet_1.save!
pet_2 = Pet.new(name: "Hermann", species: "Whale", gender: "male", age: 12, availability: "not-available", price: 10.99, shelter: shelter_2)
pet_2.save!



Booking.create!(pet: pet_1, user: user_1, start_date: Date.new-2, end_date: Date.new)
