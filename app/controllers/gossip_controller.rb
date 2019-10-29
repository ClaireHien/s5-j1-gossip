class GossipController < ApplicationController
  def new
      puts "#" * 30
      puts "new"

  end

  def create

    puts "#" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "#" * 60

    @gossip = Gossip.new(title: params["gossip_title"], content: params["gossip_content"], user_id: 266)
    # avec xxx qui sont les données obtenues à partir du formulaire
    
    if @gossip.save # essaie de sauvegarder en base @gossip
      puts "------------- gossip ajouté"
      render "static_page/home"
    else
      puts "------------- gossip refusé :"
      render "/gossip/new"
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end


  end
end
