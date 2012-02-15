class Meme < ActiveRecord::Base
  belongs_to :user
  
  has_many :meme_votes
  has_many :comments
  
end
