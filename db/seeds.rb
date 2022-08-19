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

user_3 = User.new(email: "elton.douglas@gmx.de", user_name: "Aditya Elton Douglas", password: "test12345")
user_3.save!

user_4 = User.new(email: "christophe.bartell@gmx.de", user_name: "Christophe Bartell", password: "test123456")
user_4.save!

user_5 = User.new(email: "sam.pull@gmx.de", user_name: "Sam Pull", password: "test1234567")
user_5.save!

shelter_1 = Shelter.new(name: "Happy Turtles", location: "Tokyo", user: user_1)
shelter_1.save!
shelter_2 = Shelter.new(name: "Sad Whales", location: "Sahara", user: user_2)
shelter_2.save!
shelter_3 = Shelter.new(name: "Cool Cat", location: "Osaka", user: user_3)
shelter_3.save!
shelter_4 = Shelter.new(name: "Small Dogs", location: "Kanagawa", user: user_4)
shelter_4.save!
shelter_5 = Shelter.new(name: "Handsome Horses", location: "Yokohama", user: user_5)
shelter_5.save!


pet_1 = Pet.new(name: "Günther", species: "Turtle", gender: "undefined", age: 220, availability: "available", price: 9, shelter: shelter_1, description: "Although Günther is part of the Happy Turtles Shelter he is a sad turtle because his friends are all younger than him. To make Günther happy, take him out on a date. He loves Whisky!")
pet_1.save!
pet_2 = Pet.new(name: "Hermann", species: "Whale", gender: "male", age: 12, availability: "not-available", price: 10, shelter: shelter_2, description: "Hermann, although being a big boy, is still a little child at heart. He loves being taken to the arcade where his favorite game is Mario Cart. He also loves going on fancy dinners (loves sushi) but hates the beach.")
pet_2.save!
pet_3 = Pet.new(name: "Shadow", species: "Cat", gender: "female", age: 18, availability: "not-available", price: 11, shelter: shelter_3, description: "Shadow was the cat that inspired Jiji in the movie Kikis Delivery Service by Studio Ghibli. Being retired for 8 years already, she now loves hunting frogs and going to theme parks")
pet_3.save!
pet_4 = Pet.new(name: "Spike", species: "Dog", gender: "male", age: 5, availability: "available", price: 50, shelter: shelter_4, description: "Spike once worked for the MI6 and also was a double agent for some years. He loves sunsets but hates the sunrise. If you rent him for a couple of days make sure to play some poker with him as it is his favorite game.")
pet_4.save!
pet_5 = Pet.new(name: "Noir", species: "Horse", gender: "male", age: 1, availability: "available", price: 100, shelter: shelter_5, description: "Noir actually once was a Unicorn but had to sell his horn because he got into business with the wrong guys.")
pet_5.save!


# Booking.create!(pet: pet_1, user: user_1, start_date: Date.new-2, end_date: Date.new)
