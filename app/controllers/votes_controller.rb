class VotesController < ApplicationController
	before_action :set_votable

	def create
		@vote = @votable.votes.new

	end

	private

	def set_votable
      @votable = params[:votable].classify.constantize.find(votable_id)
    end

    def commentable_id
      params[(params[:votable] + "_id").to_sym]
    end
end
