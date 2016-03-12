class Micropost < ActiveRecord::Base
  belongs_to :user
  
  mount_uploader :photo, PhotoUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
