class LikeController < ApplicationController
  def create

    puts "create!"

    puts params
    puts "gossip_id : #{params[:gossip_id]}"
    puts "user_id : #{current_user.id}"
    Like.create!(gossip_id: params[:gossip_id], user_id: current_user.id)
      
  end
end
