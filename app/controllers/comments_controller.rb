class CommentsController < ApplicationController
	def index
		@article = Article.find(params[:article_id])
		@comments = Comment.where(article_id: params[:article_id])
	end

	def new
		@article = Article.find(params[:article_id])
		@comment = Comment.new
	end

	def create
		@article = Article.find(params[:article_id])
 		@comment = Comment.new(comment_params)
 		@comment.assign_attributes(user: current_user)
			if @comment.save
 				flash[:notice] = 'New comment created!'
 				@article.comments << @comment
 				redirect_to [@article, :comments]
 			else
 				render :new
 			end
 	end

 	private

	def comment_params
 		params.require(:comment).permit(:body)
 	end
end
