require 'faker'
 
def new_user #efface les user et en crée 20 nouveaux

  User.destroy_all

  20.times do
      first = Faker::Name.first_name 
      age = rand(7..77)
      User.create!(first_name: first, last_name: Faker::Name.last_name, age: age, description: Faker::Movie.quote, email: Faker::Internet.email(name: first), alias: Faker::Creature::Cat.name)
      puts "name : #{first}"
  end
  puts "10 profils crées"
end

def new_gossip #efface les gossips et en crée 50 nouveaux

  Gossip.destroy_all
    
  50.times do
      user = User.all.sample
      title = Faker::Creature::Animal.name
      Gossip.create!(title: title, content: Faker::Quote.famous_last_words, user_id: user.id)
      puts "gossip : #{title}"
  end
  puts "50 gossips crées"

end

def create_anonymous #si il a été supprimé
  User.create!(first_name: "XXX", last_name: "XXX", alias: "Anonymous", age: 0, email: "anonymous@anonymous.com", description: "Compte PNJ")
end

# new_user #!!! ne pas supprimer pour ne pas supprimer anonymous > penser à éditer dans le formulaire si c'est fait
# create_anonymous
new_gossip