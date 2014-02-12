class CommentsController < ApplicationController
	def index
		@comments = Comment.all
	end

	def new
		@article = Article.find(params[:article_id])
		@comment = Comment.new
	end

	def create
 		@comment = Comment.new(comment_params)
			if @comment.save
 				flash[:notice] = 'New comment created!'
 				redirect_to action: :new
 			else
 				render :new
 			end
 	end

 	private

	def comment_params
 		params.require(:comment).permit(:body)
 	end
end
