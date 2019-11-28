# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
BabyMaterial.destroy_all
User.destroy_all
Sale.destroy_all

user1=User.create!(email: "gefouque@gmail.com", password: "password")
user2=User.create!(email: "gfouque@gmail.com", password: "password")
user3=User.create!(email: "user3@gmail.com", password: "password")
user4=User.create!(email: "user4@gmail.com", password: "password")
user5=User.create!(email: "user5@gmail.com", password: "password")
user6=User.create!(email: "user6@gmail.com", password: "password")
user7=User.create!(email: "user7@gmail.com", password: "password")
user8=User.create!(email: "user8@gmail.com", password: "password")
user9=User.create!(email: "user9@gmail.com", password: "password")
user10=User.create!(email: "user10@gmail.com", password: "password")


url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
poussette=BabyMaterial.create!(title: "Poussette", description: 'La poussette est un moyen de transport pour enfant en bas âge.', address: '160 rue Paradis, Marseille', price: 20, rating: 3, user: user1)
poussette.remote_photo_url = url
url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
litparapluie=BabyMaterial.create!(title: "Lit parapluie", description: 'Très bon état', address: '161 rue Paradis, Marseille', price: 20, rating: 3, user: user3)
litparapluie.remote_photo_url = url
url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
cosy=BabyMaterial.create!(title: "Cosy", description: 'ok', address: '162 rue Paradis, Marseille', price: 20, rating: 3, user: user5)
cosy.remote_photo_url = url
url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
chauffebiberon=BabyMaterial.create!(title: "Chauffebiberon", description: 'Très bon état', address: '163 rue Paradis, Marseille', price: 20, rating: 3, user: user7)
chauffebiberon.remote_photo_url = url
url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
portebebe=BabyMaterial.create!(title: "Portebebe", description: 'Très léger', address: '164 rue Paradis, Marseille', price: 20, rating: 3, user: user9)
portebebe.remote_photo_url = url





Sale.create!(baby_material: poussette, user: user2)
Sale.create!(baby_material: litparapluie, user: user4)
Sale.create!(baby_material: cosy, user: user6)
Sale.create!(baby_material: chauffebiberon, user: user8)
Sale.create!(baby_material: portebebe, user: user10)

puts 'Finished!'
