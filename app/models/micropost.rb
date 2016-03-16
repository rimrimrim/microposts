class Micropost < ActiveRecord::Base
  belongs_to :user
  has_many :micropost
  
  mount_uploader :micropost, MicropostUploader
  validates :user_id, presence: true
  validates :content, length: { maximum: 140 }
end
