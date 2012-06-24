# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if User.find_by_email("admin@ticketee.com").nil?
  admin_user = User.create email: "admin@ticketee.com", password: "password"
  admin_user.admin = true
  admin_user.confirm!
end

Project.create name: "Ticketee Beta" if Project.find_by_name("Ticketee Beta").nil?

State.create name: "New", background: "#85ff00", color: "white", default: true
State.create name: "Open", background: "#00cffd", color: "white"
State.create name: "Closed", background: "black", color: "white"
