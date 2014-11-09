# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.delete_all
Kit.delete_all
Rental.delete_all
Endorsement.delete_all
InsurancePolicy.delete_all
InsuranceClaim.delete_all
KitRating.delete_all

user = User.create!(user_name: "Alex", first_name: "Alex", last_name: "Hamlin", address: "19 Tunley Road", postcode: "sw17 7qh", profile_picture: nil, email: "alexham100@aol.com", password: "password")
user2 = User.create!(user_name: "Neha", first_name: "Neha", last_name: "Shah", address: "123 Poo Street", postcode: "P00 4U", profile_picture: nil, email: "neha.shah@whateva.com", password: "password")

kit1 = Kit.create!(category: "Skiing", 
                                kind: "Skis", 
                                daily_price: 30, 
                                weekly_price: 90, 
                                monthly_price: 300, 
                                condition: "good", 
                                description: "Lorum Ipsum", 
                                insurance_required: true, 
                                location: "SW120DF")
kit2 = Kit.create!(category: "Skiing", 
                                kind: "Skis", 
                                daily_price: 30, 
                                weekly_price: 90, 
                                monthly_price: 300, 
                                condition: "good", 
                                description: "Lorum Ipsum", 
                                insurance_required: true, 
                                location: "London")

kitrating1 = KitRating.create!(rating: 4, content: "Great skis, worth every penny!", author_id: 2)

endorsement1 = Endorsement.create!(user_id: 1, author_id: 2, rating: 5, content: "Awesome chap!", title: "MEGA!")

rental1 = Rental.create!(renter_id: 1, start_date: "2014-08-03", end_date: "2014-08-06", cost: 233, status: "open", kit_id: 1)
rental2 = Rental.create!(renter_id: 2, start_date: "2014-08-08", end_date: "2014-08-09", cost: 133, status: "open", kit_id: 1)

insurance = InsurancePolicy.create!(policy_number: 1, price: 20, start_date: "2014-08-08", end_date: "2015-08-08")
claim = InsuranceClaim.create!(claim_number: 001, cost: 302, closed: true, closed_date: "2014-08-08")


insurance.insurance_claims << claim
user.insurance_policies << insurance

user.kits << kit1
user.kits << kit2

user.endorsements << endorsement1
user2.rentals << rental1


kit1.rentals << rental1
kit1.rentals << rental2
kit1.kit_ratings << kitrating1

user.rentals << rental1
user.rentals << rental2



