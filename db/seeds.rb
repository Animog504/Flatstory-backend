# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.destroy_all
User.destroy_all

#---------------------

User.create(username: "animog504", password: "moogle", email:"animoogle504@sbcglobal.net", score: 1337, avatar: "https://vignette.wikia.nocookie.net/finalfantasy-crystalchronicles/images/0/0c/Ffcc_moogle.jpg")

#------- Character(s)

Character.create(name: "Joshua", move_speed: 7, jump_power: 10, attack_power: 4, user_id: 1)
Character.create(name: "Humzah", move_speed: 6, jump_power: 6, attack_power: 8, user_id: 1)
