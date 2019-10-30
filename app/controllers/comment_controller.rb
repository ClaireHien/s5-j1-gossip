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
    comment_params = params.require(:comment).permit(:content)

    if @comment.update(comment_params)
			redirect_to '/home'
			puts "commentaire modifié"
    else
			redirect_to '/home'
			puts "commentaire non modifié!"
		end
		
  end

end
