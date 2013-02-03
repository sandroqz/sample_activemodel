# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!([{name: 'user1', email: "user1@domain.com", password: 'password1', password_confirmation: "password1"}, {name: "user2", email: "user2@domain.com", password: "password2", password_confirmation: "password2"}])
