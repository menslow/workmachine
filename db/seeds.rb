# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#rails g model User name:string display_name:string email:string
#rails g model Project name:string description:text active:boolean
#rails g model Note project_id:integer user_id:integer name:string start:date due:date


User.create(name: "Michael Enslow", display_name: "menslow", email: "michael@mistermachine.com")
User.create(name: "Jesse Arnold", display_name: "slowbot", email: "jesse@mistermachine.com")
User.create(name: "Anotonio Lettieri", display_name: "webtonio", email: "alettieri@gmail.com")

Project.create(name: "Elixir Website Development", description: "Development of a WordPress website for Elixir Design.", active: false)
Project.create(name: "Cello Maudru Website Development", description: "Development of a WordPress website for Elixir Design.", active: true)
Project.create(name: "Boxes and Arrows Support", description: "Monthly support for Boxes and Arrows", active: true)
Project.create(name: "Jobs", description: "Migration of Jobs site from legacy Rails to WPJobBoard", active: true)
Project.create(name: "ATG Compas Upgrade", description: "Migration to new Compas API", active: false)
Project.create(name: "Monthly Support", description: "Monthly support for the hired guns", active: true)
Project.create(name: "Creature Shop Web Design and Development", description: "Design and development of the creatureshop.com website", active: false)
Project.create(name: "Design Consultation", description: "Consultation on design and development of Ngaged Web App", active: true)
Project.create(name: "Mommy Bloggers Design", description: "Photoshop design mockups for mommyblogger.com", active: true)

Note.create(project_id: 2, user_id: 1, name: "Check with Jen about Cello Maundru status", start: Date.today, due: Date.tomorrow)
Note.create(project_id: 3, user_id: 1, name: "Deploy CSS updates to test server", start: Date.today, due: Date.tomorrow)
Note.create(project_id: 5, user_id: 1, name: "Track down issue with 21 errors from Compas", start: Date.yesterday, due: Date.tomorrow)
Note.create(project_id: 7, user_id: 1, name: "Create new case study content", start: Date.today, due: Date.tomorrow)