# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.new(name: "Vyankatesh Madgundi", email: "venky.v2@gmail.com", password: "test123")

if user1.save
  question = user1.questions.build(title: "How is rails doing?")
  question.save
end

user2 = User.new(name: "Ajay Arsud", email: "venky_app@hotmail.com", password: "test123")

if user2.save
  question = user2.questions.build(title: "What is new in Rails version 6?")
  question.save
end
