class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :article

  has_many :votes, as: :votable

  validates :body, presence: true


end
