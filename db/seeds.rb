# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'started seeding'
User.destroy_all
Tattoo.destroy_all
puts 'destroyed all'

url1 = 'https://www.tattooinsider.com/wp-content/uploads/2018/03/Butterfly-Tattoo-by-Alan-Victor.jpg'
url2 = 'http://www.spews.org/wp-content/uploads/2018/05/georgiagreynyc-4-800x600.png'
url3 = 'https://www.tattooinsider.com/wp-content/uploads/2017/12/Rose-Small-Tattoo-by-Romeo-Lacoste-.jpg'
url4 = 'https://slack-imgs.com/?c=1&url=https%3A%2F%2Fres.cloudinary.com%2Fdj1bs7vyp%2Fimage%2Fupload%2Fv1558531816%2Fmtntattoos_dvhghe.jpg'
url5 = 'https://slack-imgs.com/?c=1&url=https%3A%2F%2Fres.cloudinary.com%2Fdj1bs7vyp%2Fimage%2Fupload%2Fv1558531816%2FJess-Crop_n29xjx.jpg'
puts 'url done'

users = User.create([{ email: "jackattack@gmail.com", role: "artist", name: "Jack Erins",  password: "123456", password_confirmation: "123456"},
  { email: "cainerivers112@gmail.com", role: "artist", name: "Caine Rivers",  password: "123456", password_confirmation: "123456"},
  { email: "iamastrawberry@gmail.com", role: "customer", name: "Harry Jenkins",  password: "123456", password_confirmation: "123456"},
  { email: "peacelovehappyness@gmail.com", role: "customer", name: "Licor Appelbottom",  password: "123456", password_confirmation: "123456"},
  { email: "lindseyrocks11@gmail.com", role: "artist", name: "Lindsey Samuels",  password: "123456", password_confirmation: "123456"}])
puts 'user done'

tattoos = Tattoo.create([{ remote_photo_url: url1, description: "a butterly", user: users.first},
  { remote_photo_url: url2, description: "five triangles reduced in size with splatter paint", user: users.first},
  { remote_photo_url: url3, description: "a mircroneedled rose tattoo", user: users.second},
  { remote_photo_url: url4, description: "landscape tattoo", user: users.second},
  { remote_photo_url: url5, description: "flower on back", user: users.second}])
puts 'finished'
