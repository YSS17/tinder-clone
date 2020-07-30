# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create([
  {first_name: "Sarah", last_name: "Karlin", username: "Sarah" , email: "sarah@example.com", password:"121212", image: "https://images.pexels.com/photos/3565370/pexels-photo-3565370.jpeg"},
  {first_name: "Emily", last_name: "Justine", username: "Emily", email: "emily@example.com", password:"121212", image:"https://images.pexels.com/photos/3053844/pexels-photo-3053844.jpeg"},
  {first_name: "Roger", last_name: "Jones", username: "Roger", email: "roger@example.com", password:"121212" , image: "https://images.pexels.com/photos/3027243/pexels-photo-3027243.jpeg"},
  {first_name: "Caroline", last_name: "Molas", username: "Caroline", email: "caroline@example.com", password:"121212", image:"https://images.pexels.com/photos/2818238/pexels-photo-2818238.jpeg?"},
  {first_name: "Poul", last_name: "Smith", username:  "Poul", email: "poul@example.com", password:"121212", image:"https://images.pexels.com/photos/2806146/pexels-photo-2806146.jpeg?"},
])
