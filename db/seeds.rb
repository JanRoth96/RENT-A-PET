# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Booking.destroy_all
Pet.destroy_all
Shelter.destroy_all
User.destroy_all

# user_1 = User.new(email: "max.müller@gmx.de", user_name: "Max Müller", password: "test1234")
# user_1.save!

user_2 = User.new(email: "daniel.hamm@gmx.de", user_name: "Daniel Hamm", password: "tet56474st")
user_2.save!

user_3 = User.new(email: "elton.douglas@gmx.de", user_name: "Aditya Elton Douglas", password: "test12345")
user_3.save!

user_4 = User.new(email: "christophe.bartell@gmx.de", user_name: "Christophe Bartell", password: "test123456")
user_4.save!

user_5 = User.new(email: "sam.pull@gmx.de", user_name: "Sam Pull", password: "test1234567")
user_5.save!

user_6 = User.new(email: "florian.hamm@gmx.de", user_name: "Florian Mikkelsen", password: "tet56474st")
user_6.save!

# shelter_1 = Shelter.new(name: "Happy Turtles", location: "Tokyo", user: user_1)
# shelter_1.save!
shelter_2 = Shelter.new(name: "Sad Whales", location: "Sahara", user: user_2)
shelter_2.save!
shelter_3 = Shelter.new(name: "Cool Cat", location: "Osaka", user: user_3)
shelter_3.save!
shelter_4 = Shelter.new(name: "Small Dogs", location: "Kanagawa", user: user_4)
shelter_4.save!
shelter_5 = Shelter.new(name: "Handsome Horses", location: "Yokohama", user: user_5)
shelter_5.save!


# pet_1 = Pet.new(name: "Günther", species: "Turtle", gender: "undefined", age: 220, availability: "available", price: 9, shelter: shelter_1, description: "Although Günther is part of the Happy Turtles Shelter he is a sad turtle because his friends are all younger than him. To make Günther happy, take him out on a date. He loves Whisky!")
# pet_1.save!

whale_1 = Pet.new(name: "Hermann", species: "Whale", gender: "male", age: 12, availability: "not-available", price: 10, shelter: shelter_2, description: "Hermann, although being a big boy, is still a little child at heart. He loves being taken to the arcade where his favorite game is Mario Cart. He also loves going on fancy dinners (loves sushi) but hates the beach.")
whale_1.save!
whale_2 = Pet.new(name: "Dieter", species: "Whale", gender: "male", age: 120, availability: "not-available", price: 100, shelter: shelter_2, description: "Dieter, although being a big boy, is still a little child at heart. He loves being taken to the arcade where his favorite game is Mario Cart. He also loves going on fancy dinners (loves sushi) but hates the beach.")
whale_2.save!
whale_3 = Pet.new(name: "Günther", species: "Whale", gender: "male", age: 2, availability: "not-available", price: 60, shelter: shelter_2, description: "Günther, although being a big boy, is still a little child at heart. He loves being taken to the arcade where his favorite game is Mario Cart. He also loves going on fancy dinners (loves sushi) but hates the beach.")
whale_3.save!
whale_4 = Pet.new(name: "Atze", species: "Whale", gender: "male", age: 25, availability: "not-available", price: 70, shelter: shelter_2, description: "Atze, although being a big boy, is still a little child at heart. He loves being taken to the arcade where his favorite game is Mario Cart. He also loves going on fancy dinners (loves sushi) but hates the beach.")
whale_4.save!
whale_5 = Pet.new(name: "Albert", species: "Whale", gender: "male", age: 29, availability: "not-available", price: 120, shelter: shelter_2, description: "Albert, although being a big boy, is still a little child at heart. He loves being taken to the arcade where his favorite game is Mario Cart. He also loves going on fancy dinners (loves sushi) but hates the beach.")
whale_5.save!

cat_1 = Pet.new(name: "Shadow", species: "Cat", gender: "female", age: 10, availability: "not-available", price: 11, shelter: shelter_3, description: "Shadow was the cat that inspired Jiji in the movie Kikis Delivery Service by Studio Ghibli. Being retired for 8 years already, she now loves hunting frogs and going to theme parks")
cat_1.save!
cat_2 = Pet.new(name: "Sprinkle", species: "Cat", gender: "female", age: 11, availability: "not-available", price: 12, shelter: shelter_3, description: "Sprinkle was the cat that inspired Jiji in the movie Kikis Delivery Service by Studio Ghibli. Being retired for 8 years already, she now loves hunting frogs and going to theme parks")
cat_2.save!
cat_3 = Pet.new(name: "Luna", species: "Cat", gender: "female", age: 12, availability: "not-available", price: 13, shelter: shelter_3, description: "Luna was the cat that inspired Jiji in the movie Kikis Delivery Service by Studio Ghibli. Being retired for 8 years already, she now loves hunting frogs and going to theme parks")
cat_3.save!
cat_4 = Pet.new(name: "Neko", species: "Cat", gender: "female", age: 13, availability: "not-available", price: 15, shelter: shelter_3, description: "Neko was the cat that inspired Jiji in the movie Kikis Delivery Service by Studio Ghibli. Being retired for 8 years already, she now loves hunting frogs and going to theme parks")
cat_4.save!
cat_5 = Pet.new(name: "Felix", species: "Cat", gender: "female", age: 14, availability: "not-available", price: 16, shelter: shelter_3, description: "Felix was the cat that inspired Jiji in the movie Kikis Delivery Service by Studio Ghibli. Being retired for 8 years already, she now loves hunting frogs and going to theme parks")
cat_5.save!

dog_1 = Pet.new(name: "Spike", species: "Dog", gender: "male", age: 5, availability: "available", price: 50, shelter: shelter_4, description: "Spike once worked for the MI6 and also was a double agent for some years. He loves sunsets but hates the sunrise. If you rent him for a couple of days make sure to play some poker with him as it is his favorite game.")
dog_1.save!
dog_2 = Pet.new(name: "Buddy", species: "Dog", gender: "male", age: 7, availability: "available", price: 50, shelter: shelter_4, description: "Buddy once worked for the MI6 and also was a double agent for some years. He loves sunsets but hates the sunrise. If you rent him for a couple of days make sure to play some poker with him as it is his favorite game.")
dog_2.save!
dog_3 = Pet.new(name: "Rocky", species: "Dog", gender: "male", age: 6, availability: "available", price: 60, shelter: shelter_4, description: "Rocky once worked for the MI6 and also was a double agent for some years. He loves sunsets but hates the sunrise. If you rent him for a couple of days make sure to play some poker with him as it is his favorite game.")
dog_3.save!
dog_4 = Pet.new(name: "Walther", species: "Dog", gender: "male", age: 5, availability: "available", price: 50, shelter: shelter_4, description: "Walther once worked for the MI6 and also was a double agent for some years. He loves sunsets but hates the sunrise. If you rent him for a couple of days make sure to play some poker with him as it is his favorite game.")
dog_4.save!
dog_5 = Pet.new(name: "Zeus", species: "Dog", gender: "male", age: 10, availability: "available", price: 50, shelter: shelter_4, description: "Zeus once worked for the MI6 and also was a double agent for some years. He loves sunsets but hates the sunrise. If you rent him for a couple of days make sure to play some poker with him as it is his favorite game.")
dog_5.save!

horse_1 = Pet.new(name: "Noir", species: "Horse", gender: "female", age: 1, availability: "available", price: 1000, shelter: shelter_5, description: "Noir actually once was a Unicorn but had to sell his horn because he got into business with the wrong guys.")
horse_1.save!
horse_2 = Pet.new(name: "Bella", species: "Horse", gender: "female", age: 5, availability: "available", price: 60, shelter: shelter_5, description: "Bella actually once was a Unicorn but had to sell his horn because he got into business with the wrong guys.")
horse_2.save!
horse_3 = Pet.new(name: "Alex", species: "Horse", gender: "female", age: 12, availability: "available", price: 25, shelter: shelter_5, description: "Alex actually once was a Unicorn but had to sell his horn because he got into business with the wrong guys.")
horse_3.save!
horse_4 = Pet.new(name: "Sugar", species: "Horse", gender: "female", age: 9, availability: "available", price: 16, shelter: shelter_5, description: "Sugar actually once was a Unicorn but had to sell his horn because he got into business with the wrong guys.")
horse_4.save!
horse_5 = Pet.new(name: "Lady", species: "Horse", gender: "female", age: 7, availability: "available", price: 48, shelter: shelter_5, description: "Lady actually once was a Unicorn but had to sell his horn because he got into business with the wrong guys.")
horse_5.save!


url = "https://source.unsplash.com/random/?whale&#{rand(1000)}";
file = URI.open(url)
whale_1.photo.attach(io: file, filename: "whale.png", content_type: "image/png")
whale_1.save!

url = "https://source.unsplash.com/random/?whale&#{rand(1000)}";
file = URI.open(url)
whale_2.photo.attach(io: file, filename: "whale.png", content_type: "image/png")
whale_2.save!

url = "https://source.unsplash.com/random/?whale&#{rand(1000)}";
file = URI.open(url)
whale_3.photo.attach(io: file, filename: "whale.png", content_type: "image/png")
whale_3.save!

url = "https://source.unsplash.com/random/?whale&#{rand(1000)}";
file = URI.open(url)
whale_4.photo.attach(io: file, filename: "whale.png", content_type: "image/png")
whale_4.save!

url = "https://source.unsplash.com/random/?whale&#{rand(1000)}";
file = URI.open(url)
whale_5.photo.attach(io: file, filename: "whale.png", content_type: "image/png")
whale_5.save!

url = "https://source.unsplash.com/random/?dog&#{rand(1000)}";
file = URI.open(url)
dog_1.photo.attach(io: file, filename: "dog.png", content_type: "image/png")
dog_1.save!

url = "https://source.unsplash.com/random/?dog&#{rand(1000)}";
file = URI.open(url)
dog_2.photo.attach(io: file, filename: "dog.png", content_type: "image/png")
dog_2.save!

url = "https://source.unsplash.com/random/?dog&#{rand(1000)}";
file = URI.open(url)
dog_3.photo.attach(io: file, filename: "dog.png", content_type: "image/png")
dog_3.save!

url = "https://source.unsplash.com/random/?dog&#{rand(1000)}";
file = URI.open(url)
dog_4.photo.attach(io: file, filename: "dog.png", content_type: "image/png")
dog_4.save!

url = "https://source.unsplash.com/random/?dog&#{rand(1000)}";
file = URI.open(url)
dog_5.photo.attach(io: file, filename: "dog.png", content_type: "image/png")
dog_5.save!


url = "https://source.unsplash.com/random/?cat&#{rand(1000)}";
file = URI.open(url)
cat_1.photo.attach(io: file, filename: "cat.png", content_type: "image/png")
cat_1.save!

url = "https://source.unsplash.com/random/?cat&#{rand(1000)}";
file = URI.open(url)
cat_2.photo.attach(io: file, filename: "cat.png", content_type: "image/png")
dog_2.save!

url = "https://source.unsplash.com/random/?cat&#{rand(1000)}";
file = URI.open(url)
cat_3.photo.attach(io: file, filename: "cat.png", content_type: "image/png")
cat_3.save!

url = "https://source.unsplash.com/random/?cat&#{rand(1000)}";
file = URI.open(url)
cat_4.photo.attach(io: file, filename: "cat.png", content_type: "image/png")
cat_4.save!

url = "https://source.unsplash.com/random/?cat&#{rand(1000)}";
file = URI.open(url)
cat_5.photo.attach(io: file, filename: "cat.png", content_type: "image/png")
cat_5.save!

url = "https://source.unsplash.com/random/?horse&#{rand(1000)}";
file = URI.open(url)
horse_1.photo.attach(io: file, filename: "horse.png", content_type: "image/png")
horse_1.save!

url = "https://source.unsplash.com/random/?horse&#{rand(1000)}";
file = URI.open(url)
horse_2.photo.attach(io: file, filename: "horse.png", content_type: "image/png")
dog_2.save!

url = "https://source.unsplash.com/random/?horse&#{rand(1000)}";
file = URI.open(url)
horse_3.photo.attach(io: file, filename: "horse.png", content_type: "image/png")
horse_3.save!

url = "https://source.unsplash.com/random/?horse&#{rand(1000)}";
file = URI.open(url)
horse_4.photo.attach(io: file, filename: "horse.png", content_type: "image/png")
horse_4.save!

url = "https://source.unsplash.com/random/?horse&#{rand(1000)}";
file = URI.open(url)
horse_5.photo.attach(io: file, filename: "horse.png", content_type: "image/png")
horse_5.save!




# Booking.create!(pet: pet_1, user: user_1, start_date: Date.new-2, end_date: Date.new)
