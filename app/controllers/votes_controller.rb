class VotesController < ApplicationController
	before_action :set_votable



	def up_vote
		@vote = @votable.votes.new(vote: true)
		@vote.save
		redirect_to root_path
	end

	def down_vote
		@vote = @votable.votes.new(vote: false)
		@vote.save
		redirect_to root_path
	end

	private

	def set_votable
    @votable = params[:votable].classify.constantize.find(votable_id)
  end

  def votable_id
    params[(params[:votable] + "_id").to_sym]
  end
end
