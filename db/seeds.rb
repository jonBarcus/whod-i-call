# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CommunicationType.delete_all
Entry.delete_all
User.delete_all

email = CommunicationType.create({name: "E-Mail"})
phone = CommunicationType.create({name: "Phone Call"})
skype = CommunicationType.create({name: "Skype"})
hangout = CommunicationType.create({name: "Google Hangout"})
application = CommunicationType.create({name: "Online Application"})

new_user = User.create({email: "test@test.com", name: "Test Tester", password: "test", password_confirmation: "test"})
