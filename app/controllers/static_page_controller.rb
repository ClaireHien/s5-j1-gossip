class StaticPageController < ApplicationController

  def contact
    puts "contact"
  end

  def check
    puts "check"
  end

  def team
    puts "team"
  end

  def new_gossip
    puts "team"
  end

  def city
    puts "city"
  end

  def welcome
    puts "Welcome"
  end

  def user_id
    puts "user page"
  end

  def home
    puts "Home"
  end

  def gossip
    puts "Gossip"
  end

  def tag
    puts "tag"
  end

  def create

    puts "#" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "-" * 10
    puts params[:id]
    n = params[:id]
    puts "#" * 60

    @comment = Comment.new(content: params["comment"], gossip_id: n, user_id: current_user.id)
    # avec xxx qui sont les données obtenues à partir du formulaire
    
    if @comment.save # essaie de sauvegarder en base @gossip
      puts "------------- comment ajouté"
      redirect_to "/gossip/#{n}"
    else
      puts "------------- comment refusé :"
      redirect_to "/gossip/#{n}"
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end

  end

end
