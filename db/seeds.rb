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
#rails g model Task name:string start:date due:date user_id:integer


User.create(name: "Michael Enslow", display_name: "menslow", email: "michael@mistermachine.com")
User.create(name: "Jesse Arnold", display_name: "slowbot", email: "jesse@mistermachine.com")
User.create(name: "Anotonio Lettieri", display_name: "webtonio", email: "alettieri@gmail.com")

Client.create(name: "Elixir Design")
  .projects.create([
    {name: "Elixir Website Development", description: "Development of a WordPress website for Elixir Design."}, 
    {name: "Cello Maudru Website Development", description: "Development of a WordPress website for Elixir Design."}
  ])
Client.create(name: "Boxes and Arrows")
  .projects.create([
    {name: "Boxes and Arrows Support", description: "Monthly support for Boxes and Arrows"}, 
    {name: "Jobs", description: "Migration of Jobs site from legacy Rails to WPJobBoard"}
  ])
Client.create(name: "The Hired Guns")
  .projects.create([
    {name: "ATG Compas Upgrade", description: "Migration to new Compas API"}, 
    {name: "Monthly Support", description: "Monthly support for the hired guns"}
  ])
Client.create(name: "Jim Henson's Creature Shop")
  .projects.create(
    name: "Creature Shop Web Design and Development", description: "Design and development of the creatureshop.com website"
  )
Client.create(name: "Ngaged")
  .projects.create(
    name: "Design Consultation", description: "Consultation on design and development of Ngaged Web App"
  )
Client.create(name: "Golago")
  .projects.create(
    name: "Mommy Bloggers Design", description: "Photoshop design mockups for mommyblogger.com"
  )



