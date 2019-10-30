class CommentController < ApplicationController

	def edit
		puts "edit"
		@comment = Comment.find(params[:id])
	end

	def show
		puts 'show'
	end

  def update
	@comment = Comment.find(params[:id])
	gossip = @comment.gossip_id
    comment_params = params.require(:comment).permit(:content)

    if @comment.update(comment_params)
			redirect_to "/gossip/#{gossip}"
			puts "commentaire modifié"
    else
			redirect_to '/home'
			redirect_to "/gossip/#{gossip}"
		end
		
  end

  def destroy
    @comment = Comment.find(params[:id])
	  gossip = @comment.gossip_id
    @comment.destroy
	  redirect_to "/gossip/#{gossip}"
  end

end
