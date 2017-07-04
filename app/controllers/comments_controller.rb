class CommentsController < ApplicationController
	
	def create
		@post = Post.find(params[:id])
		@comment = @post.comment.create(parans[:comment.permit(:name, :body)])
		
		redirect_to post_path(@post)
	end

end
