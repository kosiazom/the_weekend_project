class Review < ApplicationRecord
    belongs_to :party
    belongs_to :party_goer

    validates :title,  length: {minimum: 3} 
    validates :content, length: { minimum: 3}

    def self.highest_rated_party
        rate = self.all.map  do |rating|
            rating 
        end
        rate.max
    end
end
