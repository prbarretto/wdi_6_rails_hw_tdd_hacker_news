class Vote < ActiveRecord::Base
	belongs_to :votable, polymorphic: true

  def vote_tally
    up_votes = votes.where(vote: true).count
    down_votes = votes.where(vote: false).count
    up_votes - down_votes
  end
end
