class GossipController < ApplicationController
  before_action :authenticate_user, only: [:new]
  before_action :check_user, only: [:edit, :destroy, :update]

  def new
      puts "#" * 30
      puts "new"

  end

  def create

    puts "#" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "#" * 60
    puts params["tag"]

    @gossip = Gossip.new(title: params["gossip_title"], content: params["gossip_content"], tag_id: params["tag"], user_id: current_user.id)
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

  def edit
    puts "edit"
  end

  def update
    @gossip = Gossip.find(params[:id])
    gossip_params = params.require(:gossip).permit(:title, :content)

    if @gossip.update(gossip_params)
      redirect_to @gossip
    else
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to "/"
  end


  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end

  def check_user
    if current_user.id != params[:id]
      redirect_to "/check"
    end
  end


end
