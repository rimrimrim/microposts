class Quiz < ActiveRecord::Base
    belongs_to :user
    has_one :words
    validates :user_id, presense:true
    validates :word_id, presense:true
end
