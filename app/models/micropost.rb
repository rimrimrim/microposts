class Micropost < ActiveRecord::Base
  belongs_to :user
  
  mount_uploader :image, ImageUploader
  
  validates :user_id, presence: true
  validates :content, length: { maximum: 140 }
end
