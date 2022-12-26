# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
    { name: "Ise", password: "password", first_name: "Denise" , last_name: "De Jesus", email: "ise@email.com", phone: 9760501920, admin: 1 }, 
    { name: "MX", password: "bab", first_name: "Mischka" , last_name: "Snackchez", email: "mx@email.com", phone: 9760507982, admin: 1 }, 
    { name: "Derp", password: "dankmemes", first_name: "John" , last_name: "Doe", email: "john@email.com", phone: 9712345678, admin: 0 }])
toys = Toy.create([{ name: 'Lego set', description: 'Modular building blocks', user_id: 1 },
    { name: 'Bucky Balls', description: 'Magnetic metal balls', user_id: 2 }
    ])