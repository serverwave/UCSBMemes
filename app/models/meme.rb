class Meme < ActiveRecord::Base
  attr_accessible :image, :tagline, :user_id
  
  belongs_to :user
  
  has_many :meme_votes
  has_many :comments
  
  mount_uploader :image, ImageUploader
  
  def votes
    self.meme_votes
  end
  
  
end
