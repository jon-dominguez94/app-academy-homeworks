# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

stark = House.create(address: "Stark")
tyrell = House.create(address: "Tyrell")
lannister = House.create(address: "Lannister")
targaryen = House.create(address: "Targaryen")

jon = Person.create(name: "Jon", house_id: stark.id)
ned = Person.create(name: "Ned", house_id: stark.id)
margery = Person.create(name: "Margery", house_id: tyrell.id)
tyrion = Person.create(name: "Tyrion", house_id: lannister.id)
jamie = Person.create(name: "Jamie", house_id: lannister.id)
danerys = Person.create(name: "Danerys", house_id: targaryen.id)
