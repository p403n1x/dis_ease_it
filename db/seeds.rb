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
Disease.create!(user_id: "1", name: 'Coronavirus', image: 'coronavirus.jpg', description: 'any of a group of RNA viruses that cause a variety of diseases in humans and other animals.')
Disease.create!(user_id: "1", name: 'Bird flu', image: 'bird_flu.jpg', description: 'Bird flu, also called avian influenza, is a viral infection that can infect not only birds, but also humans and other animals. Most forms of the virus are restricted to birds.')
Disease.create!(user_id: "1", name: 'Delhi belly', image: 'delhi_belly.jpg', description: 'an upset stomach accompanied by diarrhoea, especially as suffered by visitors to India.')
Disease.create!(user_id: "1", name: 'Gastroentiritis', image: 'gastro.jpg', description: 'The majority of cases of acute diarrhea correspond to gastroenteritis of viral origin, most often trivial and of short duration.')
Disease.create!(user_id: "1", name: 'Measles', image: 'measles.jpg', description: 'Measles is a highly contagious infectious disease caused by the measles virus.Symptoms usually develop 10–12 days after exposure to an infected person and last 7–10 days.')
Disease.create!(user_id: "1", name: 'Food poisoning', image: 'food_poisoning.jpg', description: 'illness caused by bacteria or other toxins in food, typically with vomiting and diarrhoea.')
Disease.create!(user_id: "1", name: 'Chlamydia', image: 'chlamydia.jpg',description: 'is a sexually transmitted infection caused by the bacterium Chlamydia trachomatis.')
Disease.create!(user_id: "1", name: 'Tonsillitis', image: 'tonsillitis.jpg', description: 'Tonsillitis is inflammation of the tonsils, two oval-shaped pads of tissue at the back of the throat — one tonsil on each side.')

puts "Finish "
