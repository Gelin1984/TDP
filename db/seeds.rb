# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "seed-generated product", description: "I also created this product without using the HTML form!", price: "$20")
Product.create(name: "Simple Static Website", description: "This is the cheapest option if you want to get your professional portfolio.", price:"$40")
Product.create(name: "Dynamic Website", description: "More expensive portfolio but it will be worth!", price:"$40", color: "green")


