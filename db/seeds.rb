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


url = 'https://res.cloudinary.com/dilma/image/upload/v1574948064/lq7nwh7hfcllzntp0vqg.jpg'
poussette=BabyMaterial.new(title: "Poussette", description: 'La poussette est un moyen de transport pour enfant en bas âge.', address: '3 rue capitaine dessemond, 13007 Marseille', price: 20, rating: 3, user: user1)
poussette.remote_photo_url = url
poussette.save
url = 'https://res.cloudinary.com/dilma/image/upload/v1574948064/lq7nwh7hfcllzntp0vqg.jpg'
litparapluie=BabyMaterial.new(title: "Lit parapluie", description: 'Très bon état', address: '167 rue Paradis, 13006 Marseille', price: 20, rating: 3, user: user3)
litparapluie.remote_photo_url = url
litparapluie.save
url = 'https://res.cloudinary.com/dilma/image/upload/v1574948064/lq7nwh7hfcllzntp0vqg.jpg'
cosy=BabyMaterial.new(title: "Cosy", description: 'ok', address: '167 rue Paradis, 13006 Marseille', price: 20, rating: 3, user: user5)
cosy.remote_photo_url = url
cosy.save
url = 'https://res.cloudinary.com/dilma/image/upload/v1574948064/lq7nwh7hfcllzntp0vqg.jpg'
chauffebiberon=BabyMaterial.new(title: "Chauffebiberon", description: 'Très bon état', address: '167 rue Paradis, 13006 Marseille', price: 20, rating: 3, user: user7)
chauffebiberon.remote_photo_url = url
chauffebiberon.save
url = 'https://res.cloudinary.com/dilma/image/upload/v1574948064/lq7nwh7hfcllzntp0vqg.jpg'

portebebe=BabyMaterial.new(title: "Portebebe", description: 'Très léger', address: '167 rue Paradis, 13006 Marseille', price: 20, rating: 3, user: user9)
portebebe.remote_photo_url = url
portebebe.save
