# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ email: "jackattack@gmail.com", role: "artist", name: "Jack Erins",  password: "123456", password_confirmation: "123456"},
  { email: "cainerivers112@gmail.com", role: "artist", name: "Caine Rivers",  password: "123456", password_confirmation: "123456"},
  { email: "iamastrawberry@gmail.com", role: "customer", name: "Harry Jenkins",  password: "123456", password_confirmation: "123456"},
  { email: "peacelovehappyness@gmail.com", role: "customer", name: "Licor Appelbottom",  password: "123456", password_confirmation: "123456"},
  { email: "lindseyrocks11@gmail.com", role: "artist", name: "Lindsey Samuels",  password: "123456", password_confirmation: "123456"}])
