class Micropost < ActiveRecord::Base
    validates :content, length: { minimum: 3 }
    belongs_to :user
end
