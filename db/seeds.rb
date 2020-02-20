# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "On détruit tout"

Booking.delete_all
Disease.delete_all


puts "Création des maladies"

file = File.open("./app/assets/images/coronavirus.jpg")
d =Disease.new(name: 'Coronavirus', description: 'Any of a group of RNA viruses that cause a variety of diseases in humans and other animals.', user_id: 1)
d.image.attach(io: file, filename: "coronavirus.jpg", content_type: "image/jpg")
d.save!
file = File.open("./app/assets/images/bird_flu.jpg")
d = Disease.new(name: 'Bird flu', description: 'Bird flu, also called avian influenza, is a viral infection that can infect not only birds, but also humans and other animals. Most forms of the virus are restricted to birds.', user_id: 1)
d.image.attach(io: file, filename: "bird_flu.jpg.jpg", content_type: "image/jpg")
d.save!
file = File.open("./app/assets/images/delhi_belly.jpg")
d = Disease.new(name: 'Delhi Belly', description: 'An upset stomach accompanied by diarrhoea, especially as suffered by visitors to India.', user_id: 1)
d.image.attach(io: file, filename: "delhi_belly.jpg", content_type: "image/jpg")
d.save!
file = File.open("./app/assets/images/gastro.jpg")
d =Disease.new(name: 'Gastroentiritis', description: 'The majority of cases of acute diarrhea correspond to gastroenteritis of viral origin, most often trivial and of short duration.', user_id: 1)
d.image.attach(io: file, filename: "gastro.jpg", content_type: "image/jpg")
d.save!
file = File.open("./app/assets/images/measles.jpg")
d =Disease.new(name: 'Measles', description: 'Measles is a highly contagious infectious disease caused by the measles virus.Symptoms usually develop 10–12 days after exposure to an infected person and last 7–10 days.', user_id: 1)
d.image.attach(io: file, filename: "measles.jpg", content_type: "image/jpg")
d.save!
file = File.open("./app/assets/images/food_poisoning.jpg")
d =Disease.new(name: 'Food poisoning', description: 'Illness caused by bacteria or other toxins in food, typically with vomiting and diarrhoea.', user_id: 1)
d.image.attach(io: file, filename: "food_poisoning.jpg", content_type: "image/jpg")
d.save!
file = File.open("./app/assets/images/chlamydia.jpg")
d =Disease.new(name: 'Chlamydia', description: 'A sexually transmitted infection caused by the bacterium Chlamydia trachomatis.', user_id: 1)
d.image.attach(io: file, filename: "chlamydia.jpg", content_type: "image/jpg")
d.save!
file = File.open("./app/assets/images/tonsillitis.jpg")
d =Disease.new(name: 'Tonsillitis', description: 'Tonsillitis is an inflammation of the tonsils, two oval-shaped pads of tissue at the back of the throat — one tonsil on each side.', user_id: 1)
d.image.attach(io: file, filename: "tonsillitis.jpg", content_type: "image/jpg")
d.save!

puts "Finish "
