class VotesController < ApplicationController
	before_action :set_votable

	before_filter :authenticate_user!

	def up_vote_or_down_vote
		@vote = @votable.votes.find_or_create_by(:user_id => current_user.id)
		@vote.vote = true || false
		@vote.save
		redirect_to :back
	end

	private

	def set_votable
    @votable = params[:votable].classify.constantize.find(votable_id)
  end

  def votable_id
    params[(params[:votable] + "_id").to_sym]
  end
end
