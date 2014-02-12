class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes, as: :votable

  validates :description, presence: true
  validates :link, presence: true
end
