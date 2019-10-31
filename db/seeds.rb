require 'faker'
 
def new_city 
  10.times do
    name = Faker::Games::Pokemon.location
    City.create!(name: name)
    puts name
  end
end

def without_city
  City.create!(name: "Aucune ville")
  puts "Aucune ville"
end

def new_user 
  20.times do
      city = City.all.sample
      first = Faker::Name.first_name 
      age = rand(7..77)
      User.create!(first_name: first, last_name: Faker::Name.last_name, age: age, description: Faker::Movie.quote, email: Faker::Internet.email(name: first), alias: Faker::Creature::Cat.name, city_id: city.id, password: Faker::Lorem.characters(number: 10))
      puts "name : #{first} (#{city.name})"
  end
  puts "10 profils crées"
end

def new_gossip 
    
  50.times do
    user = User.all.sample
    tag = Tag.all.sample
    title = Faker::Creature::Animal.name
    Gossip.create!(title: title, content: Faker::Quote.famous_last_words, user_id: user.id, tag_id: tag.id)
    puts "gossip : #{title}"
  end
  puts "50 gossips crées"

end

def create_anonymous #si il a été supprimé
  city = City.all.sample
  anonymous = User.create!(first_name: "XXX", last_name: "XXX", alias: "Anonymous", age: 0, email: "anonymous@anonymous.com", description: "Compte PNJ", city_id: city.id, password: "anonymous")
  puts "#{anonymous.alias}, ID : #{anonymous.id}"
end

def new_comment 
  200.times do
    user = User.all.sample
    gossip = Gossip.all.sample
    Comment.create!(content: Faker::Quote.famous_last_words, gossip_id: gossip.id, user_id: user.id)
    puts "Commentaire rattaché à #{gossip.title}, posté par #{user.alias}"
  end
end

def new_tag 
  Tag.create!(name: "Fantasie")
  Tag.create!(name: "Romance")
  Tag.create!(name: "Triller")
  Tag.create!(name: "Western")
  Tag.create!(name: "Horreur")
  Tag.create!(name: "Science Fiction")
  Tag.create!(name: "Bit-Lit")
  Tag.create!(name: "Autobiographie")
  Tag.create!(name: "Comedie")
  Tag.create!(name: "Historique")
  puts "10 tags crées"
end

def delete
  Gossip.destroy_all
  Tag.destroy_all
  User.destroy_all
  City.destroy_all
end

def perform #décommenter les méthodes à lancer
  delete

  new_city
    without_city
  new_user
    create_anonymous
  new_tag
  new_gossip
  new_comment
end

perform