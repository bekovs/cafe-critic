# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admn_usr = User.create(name: "Admin", email: "admin@admin.com", password: "qweqweqwe", password_confirmation: "qweqweqwe", admin: true )
usr = User.create(name: "John", email: "john@gmail.com", password: "asdasdasd", password_confirmation: "asdasdasd")

cafes = Shop.create([{ title: "Dexter Burger", category_id: 2 }, { title: "Little Bay Restaurant", category_id: 1 }, { title: "Dan Thai", category_id: 2 }, { title: "Karnavar Restaurant", category_id: 1 }, { title: "Planet Pizza", category_id: 3 }, { title: "Firebellys", category_id: 3 }])

catgrys = Category.create([{ title: "Restaurant" }, { title: "Fast Food" }, { title: "Pizzeria" } ])

