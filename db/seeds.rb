# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



luke = User.create(name: "Luke Skywalker", email: "xwingin@gmail.com", password: "somepassword", master: true, trained_padawans: 5, lightsaber_color: "Emerald", age: 59, homeplanet: "Tattooine", species: "Human", ovr_force_strength: 95)
anakin = User.create(name: "Anakin Skywalker", email: "feelinsithly@gmail.com", password: "mypassword", master: false, trained_padawans: 0, lightsaber_color: "Sapphire", age: 81, homeplanet: "Tattooine", species: "Human", ovr_force_strength: 97)
ben = User.create(name: "Obi-Wan Kenobi", email: "hellothere@gmail.com", password: "sopowerful", master: true, trained_padawans: 2, lightsaber_color: "Sapphire", age: 98, homeplanet: "Stewjon", species: "Human", ovr_force_strength: 92)
yoda = User.create(name: "Yoda", email: "mesosmall@gmail.com", password: "secretthisis", master: true, trained_padawans: 45, lightsaber_color: "Emerald", age: 921, homeplanet: "Dagobah", species: "Unknown", ovr_force_strength: 97)

ashoka = Padawan.create(name: "Ahsoka Tano", age: 13, homeplanet: "Shili", species: "Togruta", ovr_force_strength: 38)
rey = Padawan.create(name: "Rey", age: 21, homeplanet: "Jakku", species: "Human", ovr_force_strength: 81)


grip = ForcePower.create(name: "Force Grip")
push = ForcePower.create(name: "Force Push")
mind = ForcePower.create(name: "Mind Trick")
pull = ForcePower.create(name: "Force Pull")
repulse = ForcePower.create(name: "Force Repulse")
jump = ForcePower.create(name: "Force Jump")

t = Training.create(user_id: 1, padawan_id: 2)
tt = Training.create(user_id: 2, padawan_id: 1)

l1 = UserForcePower.create(user_id: 1, force_power_id: 1, skill_level: 94)
l2 = UserForcePower.create(user_id: 1, force_power_id: 2, skill_level: 95)
l3 = UserForcePower.create(user_id: 1, force_power_id: 4, skill_level: 94)
l4 = UserForcePower.create(user_id: 1, force_power_id: 5, skill_level: 90)
l5 = UserForcePower.create(user_id: 1, force_power_id: 6, skill_level: 96)


p1 = PadawanForcePower.create(padawan_id: 1, force_power_id: 1, skill_level: 41)
p2 = PadawanForcePower.create(padawan_id: 1, force_power_id: 2, skill_level: 21)

pp1 = PadawanForcePower.create(padawan_id: 2, force_power_id: 1, skill_level: 73)
pp2 = PadawanForcePower.create(padawan_id: 2, force_power_id: 2, skill_level: 71)
pp3 = PadawanForcePower.create(padawan_id: 2, force_power_id: 3, skill_level: 85)
pp4 = PadawanForcePower.create(padawan_id: 2, force_power_id: 4, skill_level: 90)
