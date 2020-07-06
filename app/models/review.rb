class Review < ApplicationRecord
    belongs_to :party
    belongs_to :party_goer

    validates :title,  length: {minimum: 3} 
    validates :content, length: { minimum: 3}
end
