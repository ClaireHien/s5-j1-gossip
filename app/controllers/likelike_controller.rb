class LikelikeController < ApplicationController
    def create

        puts "create!"
    
        puts params
        puts "gossip_id : #{params[:gossip_id]}"
        puts "user_id : #{current_user.id}"
        Likelike.create!(gossip_id: params[:gossip_id], user_id: current_user.id)
        redirect_to "/gossip/#{params[:gossip_id]}"
      end
    
      def destroy
        puts "gossip_id : #{params[:gossip_id]}"
        puts "user_id : #{current_user.id}"
        @like = Likelike.find_by(gossip_id: params[:gossip_id], user_id: current_user.id)
        @like.destroy
        redirect_to "/gossip/#{params[:gossip_id]}"
      end
    
end
