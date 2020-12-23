# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: "Christine", last_name: "Prince")
Student.create(first_name: "Arvin", last_name: "Fernandez")
Student.create(first_name: "Frayli", last_name: "Menoil")

SchoolClass.create(title: "Biochemistry", room_number: 202)
SchoolClass.create(title: "Calculus", room_number: 122)
SchoolClass.create(title: "Spanish", room_number: 400)