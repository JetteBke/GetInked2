# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'started seeding'

puts 'destroyed all'

url1 = 'https://www.tattooinsider.com/wp-content/uploads/2018/03/Butterfly-Tattoo-by-Alan-Victor.jpg'
url2 = 'http://www.spews.org/wp-content/uploads/2018/05/georgiagreynyc-4-800x600.png'
url3 = 'https://www.tattooinsider.com/wp-content/uploads/2017/12/Rose-Small-Tattoo-by-Romeo-Lacoste-.jpg'
url4 = "https://slack-imgs.com/?c=1&url=https%3A%2F%2Fres.cloudinary.com%2Fdj1bs7vyp%2Fimage%2Fupload%2Fv1558531816%2Fmtntattoos_dvhghe.jpg"
url5 = 'https://slack-imgs.com/?c=1&url=https%3A%2F%2Fres.cloudinary.com%2Fdj1bs7vyp%2Fimage%2Fupload%2Fv1558531816%2FJess-Crop_n29xjx.jpg'
url6 = 'https://res.cloudinary.com/dj1bs7vyp/image/upload/v1558700151/2.png'
url7 = 'https://res.cloudinary.com/dj1bs7vyp/image/upload/v1558700151/1.png'
url8 = 'https://res.cloudinary.com/dj1bs7vyp/image/upload/v1558700151/3.png'
url9 = 'https://res.cloudinary.com/dj1bs7vyp/image/upload/v1558701295/Screen_Shot_2019-05-24_at_1.31.55_PM_nyt3fw.png'
url10 = 'https://res.cloudinary.com/dj1bs7vyp/image/upload/v1558701294/Screen_Shot_2019-05-24_at_1.29.59_PM_tifofh.png'
url11 = 'https://res.cloudinary.com/dj1bs7vyp/image/upload/v1558701293/images-2_uvqbik.jpg'
url12 = 'https://res.cloudinary.com/dj1bs7vyp/image/upload/v1558701293/download_g0lkwv.jpg'
url13 = 'https://res.cloudinary.com/dj1bs7vyp/image/upload/v1558701293/images-3_k7xzuy.jpg'
url14 = 'https://res.cloudinary.com/dj1bs7vyp/image/upload/v1558701293/images-4_owbsuo.jpg'
puts 'url done'

users = User.create([{ email: "jackattack@gmail.com", role: "artist", name: "Jack Erins",  password: "123456", password_confirmation: "123456"},
  { email: "cainerivers112@gmail.com", role: "artist", name: "Caine Rivers",  password: "123456", password_confirmation: "123456"},
  { email: "iamastrawberry@gmail.com", role: "customer", name: "Harry Jenkins",  password: "123456", password_confirmation: "123456"},
  { email: "peacelovehappyness@gmail.com", role: "customer", name: "Licor Appelbottom",  password: "123456", password_confirmation: "123456"},
  { email: "lindseyrocks11@gmail.com", role: "artist", name: "Lindsey Samuels",  password: "123456", password_confirmation: "123456"}])
puts 'user done'

tattoos = Tattoo.create([{ remote_photo_url: url1, description: "a butterly", user: User.first},
  { remote_photo_url: url2, description: "five triangles", user: User.first},
  { remote_photo_url: url3, description: "a mircroneedled rose tattoo", user: User.second},
  { remote_photo_url: url4, description: "landscape tattoo", user: User.second},
  { remote_photo_url: url5, description: "flower on back", user: User.second},
  { remote_photo_url: url6, description: "snake", user: User.first},
  { remote_photo_url: url7, description: "hands", user: User.first},
  { remote_photo_url: url8, description: "lion", user: User.second},
  { remote_photo_url: url9, description: "heart lifeline", user: User.second},
  { remote_photo_url: url10, description: "emo", user: User.first},
  { remote_photo_url: url11, description: "fight club", user: User.first},
  { remote_photo_url: url12, description: "stitch", user: User.second},
  { remote_photo_url: url13, description: "shut up", user: User.last},
  { remote_photo_url: url14, description: "we are all mad here", user: User.last}
])

puts 'finished'
