require 'faker'

50.times do
    user = rand(2..11)
    Gossip.create!(title: Faker::Book.title, content: Faker::Quote.famous_last_words, user_id: user)
end