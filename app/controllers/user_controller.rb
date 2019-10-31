class UserController < ApplicationController

  def create    
    puts "#" * 50
    puts "ceci est le contenu de params :"
    puts params
    puts "#" * 50

    @user = User.new(first_name: params["u_first_name"],
                    last_name: params["u_last_name"],
                    alias: params["u_alias"],
                    email: params["u_email"],
                    description: params["u_description"], 
                    city_id: params["u_city"],
                    age: params["u_age"], 
                    password: params["u_password"])
    # avec xxx qui sont les données obtenues à partir du formulaire
    
    if @user.save # essaie de sauvegarder en base @gossip
      puts "------------- compte crée"
      render "static_page/home"
    else
      puts "------------- inscription refusée :"
      render "/user/new"
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end

  end

end
