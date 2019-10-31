class SessionController < ApplicationController
  before_action :authenticate_user, only: [:profile]

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
      session[:user_id] = @user.id
      redirect_to "/"
    end
  end

  def profile
    puts "profile"
  end

  def destroy
    session.delete(:user_id)
    redirect_to "/"

  end

  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end


end
