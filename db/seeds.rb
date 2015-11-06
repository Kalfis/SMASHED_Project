# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(sname: 'Drunk Steve', email: 'steveisdrunk@lol.com', password: 'steve123', password_confirmation: 'steve123')
User.create(sname: 'Drunk Anthony', email: 'anthonyisdrunk@lol.com', password: 'tony123', password_confirmation: 'tony123')
User.create(sname: 'Wasted Oleg', email: 'olegisdrunk@lol.com', password: 'oleg123', password_confirmation: 'oleg123')
User.create(sname: 'SMASHED Dave', email: 'daveisdrunk@lol.com', password: 'dave123', password_confirmation: 'dave123')
