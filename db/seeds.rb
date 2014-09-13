# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CommunicationType.delete_all
Entry.delete_all

email = CommunicationType.new({name: "E-Mail"})
phone = CommunicationType.new({name: "Phone Call"})
skype = CommunicationType.new({name: "Skype"})
hangout = CommunicationType.new({name: "Google Hangout"})
application = CommunicationType.new({name: "Online Application"})
