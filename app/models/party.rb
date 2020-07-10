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

 def average_rating
   rate = self.reviews.map do |review|
        review.rating 
    end
    rate.sum/rate.length
 end

 def num_of_guests
    self.party_goers.count
 end

#  def highest_guestlist

#  end

 def party_genre
    self.dj.genre 
 end
 
end
