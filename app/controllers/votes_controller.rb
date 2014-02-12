class VotesController < ApplicationController
	before_action :set_votable



	def up_vote
		@vote = @votable.votes.new(vote: true)
		if @vote.save
			flash[:notice] = "You voted this Up!"
			redirect_to root_path
		else
			flash[:notice] = "You can't vote more than once."
			redirect_to root_path
		end
	end

	def down_vote
		@vote = @votable.votes.new(vote: false)
		if @vote.save
			flash[:notice] = "You voted this Down!"
			redirect_to root_path
		else
			flash[:notice] = "You can't vote more than once."
			redirect_to root_path
		end
	end
	private

	def set_votable
		# Artice.find(article_id)
    @votable = params[:votable].classify.constantize.find(params[:article_id])
  end

  def commentable_id
    params[(params[:votable] + "_id").to_sym]
  end
end
