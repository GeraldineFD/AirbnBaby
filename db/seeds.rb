# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
BabyMaterial.destroy_all

BabyMaterial.create(title: "Poussette", description: 'La poussette est un moyen de transport pour enfant en bas âge.', price: 20, rating: 3)

puts 'Finished!'
