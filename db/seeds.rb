# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

catgrys = Category.create([{ title: "Restaurant" }, { title: "Fast Food" }, { title: "Pizzeria" } ])

admin_user = User.create(name: 'Admin', email: 'admin@gmail.com', password: 'qweqweqwe', password_confirmation: 'qweqweqwe', admin: true)

usrs = User.create([{ name: 'Peter', email: 'peter@gmail.com', password: 'asdasdasd', password_confirmation: 'asdasdasd' },
                    { name: 'John', email: 'john@gmail.com', password: 'asdasdasd', password_confirmation: 'asdasdasd' },
                    { name: 'Clara', email: 'clara@gmail.com', password: 'asdasdasd', password_confirmation: 'asdasdasd' },
                    { name: 'Jenny', email: 'jenny@gmail.com', password: 'asdasdasd', password_confirmation: 'asdasdasd' },
                    { name: 'Amanda', email: 'amanda@gmail.com', password: 'asdasdasd', password_confirmation: 'asdasdasd' }])


cafes = Shop.create([{ title: "Dexter Burger", category_id: 2, user_id: 1, image: Rails.root.join("app/assets/images/cafe_images/dexter.jpg").open }, { title: "Little Bay Restaurant", category_id: 1, user_id: 1, image: Rails.root.join("app/assets/images/cafe_images/bay.jpg").open }, { title: "Dan Thai", category_id: 2, user_id: 1, image: Rails.root.join("app/assets/images/cafe_images/danthai.jpg").open }, { title: "Karnavar Restaurant", category_id: 1, user_id: 1, image: Rails.root.join("app/assets/images/cafe_images/karn.png").open }, { title: "Planet Pizza", category_id: 3, user_id: 1, image: Rails.root.join("app/assets/images/cafe_images/pizza.jpg").open }, { title: "Firebellys", category_id: 3, user_id: 1, image: Rails.root.join("app/assets/images/cafe_images/firebellys.jpg").open }])


