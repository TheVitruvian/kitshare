# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create!(user_name: "Alex", first_name: "Alex", last_name: "Hamlin", address: "19 Tunley Road", postcode: "sw17 7qh", profile_picture: nil, email: "alexham100@aol.com", password: "password", role: "admin")

user2 = User.create!(user_name: "Ne", first_name: "Neha", last_name: "Shah", address: "Hyde Park Mansions 3D, Transept St", postcode: "nw1 5ep", profile_picture: nil, email: "neshah07@gmail.com", password: "password", role: "user")