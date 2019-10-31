class SessionController < ApplicationController

  def new
    puts "new"
  end

  def create
    puts "create"
    puts "#" * 50
    puts params
    puts "#" * 50

    @user = User.find_by(email: params["u_email"])
    connexion = @user.authenticate(params["u_password"])

    if connexion == false
      puts "------------- connexion refusée"
      render "/session/new"
    else
      puts "------------- connexion effectuée"
      redirect_to "/"
    end

  end
end
