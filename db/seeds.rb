require 'faker'

Gossip.destroy_all
User.destroy_all
 
20.times do
    first = Faker::Name.first_name 
    age = rand(7..77)
    User.create!(first_name: first, last_name: Faker::Name.last_name, age: age, description: Faker::Movie.quote, email: Faker::Internet.email(name: first), alias: Faker::Creature::Cat.name)
    puts "name : #{first}"
end
puts "10 profils crées"

50.times do
    user = User.all.sample
    Gossip.create!(title: Faker::Book.title, content: Faker::Quote.famous_last_words, user_id: user.id)
end
puts "50 gossips crées"