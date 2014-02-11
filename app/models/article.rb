class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :description, presence: true
  validates :link, presence: true
end
