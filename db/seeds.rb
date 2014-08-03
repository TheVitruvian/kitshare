# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.delete_all
Equipment.delete_all
Rental.delete_all
Endorsement.delete_all

user = User.create!(user_name: "Alex", first_name: "Alex", last_name: "Hamlin", address: "19 Tunley Road", postcode: "sw17 7qh", profile_picture: nil, email: "alexham100@aol.com", password: "password")
user2 = User.create!(user_name: "Neha", first_name: "Neha", last_name: "Shah", address: "123 Poo Street", postcode: "P00 4U", profile_picture: nil, email: "neha.shah@whateva.com", password: "password")

equipment1 = Equipment.create!(category: "Skiing", 
                                kind: "Skis", 
                                daily_price: 30, 
                                weekly_price: 90, 
                                monthly_price: 300, 
                                condition: "good", 
                                description: "Lorum Ipsum", 
                                insurance_required: true, 
                                location: "SW120DF")

endorsement1 = Endorsement.create!(user_id: 1, author_id: 2, rating: 5, content: "Awesome chap!")

rental1 = Rental.create!(renter_id: 1, start_date: "2014-08-03", end_date: "2014-08-06", cost: 233, status: "open")
rental2 = Rental.create!(renter_id: 2, start_date: "2014-08-08", end_date: "2014-08-09", cost: 133, status: "open")


user.equipments << equipment1
user.endorsements << endorsement1
user2.rentals << rental1


equipment1.rentals << rental1
equipment1.rentals << rental2
