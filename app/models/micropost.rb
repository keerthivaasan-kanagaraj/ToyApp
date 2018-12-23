class Micropost < ActiveRecord::Base
    validates :content, length: { minimum: 3 },presence:true
    belongs_to :user
end
