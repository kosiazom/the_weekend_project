class Party < ApplicationRecord
    belongs_to :promoter
    belongs_to :dj
    has_many :guest_lists
    has_many :party_goers, through: :guest_lists
    has_many :reviews

 def review_title
    self.reviews.map do |review|
        review.title
    end.join
     
 end
 
end
