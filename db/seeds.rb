require 'faker'

10.times do 
    age = rand(7..77)
    first_name = Faker::Name.first_name
    User.create!(first_name: first_name, last_name: Faker::Name.last_name, alias: Faker::Creature::Cat.name, age: age, email: Faker::Internet.email(name: first_name), description: Faker::Quote.famous_last_words)
end

30.times do
    user = rand(1..10)
    Gossip.create!(title: Faker::Book.title, content: Faker::Quote.famous_last_words, user_id: user)
end