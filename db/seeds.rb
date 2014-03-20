# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#rails g model User name:string display_name:string email:string
#rails g model Client name:string
#rails g model Project name:string description:text active:boolean client_id:integer
#rails g model Note project_id:integer user_id:integer name:string start:date due:date


User.create(name: "Michael Enslow", display_name: "menslow", email: "michael@mistermachine.com")
User.create(name: "Jesse Arnold", display_name: "slowbot", email: "jesse@mistermachine.com")
User.create(name: "Anotonio Lettieri", display_name: "webtonio", email: "alettieri@gmail.com")

Client.create(name: "Elixir Design")
Client.create(name: "Boxes and Arrows")
Client.create(name: "The Hired Guns")
Client.create(name: "Jim Henson's Creature Shop")
Client.create(name: "Ngaged")
Client.create(name: "Golago")

Project.create(name: "Elixir Website Development", description: "Development of a WordPress website for Elixir Design.", active: false, client_id: 1)
Project.create(name: "Cello Maudru Website Development", description: "Development of a WordPress website for Elixir Design.", active: true, client_id: 1)
Project.create(name: "Boxes and Arrows Support", description: "Monthly support for Boxes and Arrows", active: true, client_id: 2)
Project.create(name: "Jobs", description: "Migration of Jobs site from legacy Rails to WPJobBoard", active: true, client_id: 2)
Project.create(name: "ATG Compas Upgrade", description: "Migration to new Compas API", active: false, client_id: 3)
Project.create(name: "Monthly Support", description: "Monthly support for the hired guns", active: true, client_id: 3)
Project.create(name: "Creature Shop Web Design and Development", description: "Design and development of the creatureshop.com website", active: false, client_id: 4)
Project.create(name: "Design Consultation", description: "Consultation on design and development of Ngaged Web App", active: true, client_id: 5)
Project.create(name: "Mommy Bloggers Design", description: "Photoshop design mockups for mommyblogger.com", active: true, client_id: 6)


