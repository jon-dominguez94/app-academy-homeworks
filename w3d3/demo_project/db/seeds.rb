# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.create(address: "Stark")
House.create(address: "Tyrell")
House.create(address: "Lannister")
House.create(address: "Targaryen")

Person.create(name: "Jon", house_id: 1)
Person.create(name: "Ned", house_id: 1)
Person.create(name: "Margery", house_id: 2)
Person.create(name: "Tyrion", house_id: 3)
Person.create(name: "Jamie", house_id: 3)
Person.create(name: "Danerys", house_id: 4)
