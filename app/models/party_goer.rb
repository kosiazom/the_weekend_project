class PartyGoer < ApplicationRecord
    has_secure_password

    has_many :guest_lists
    has_many :parties, through: :guest_lists
    has_many :reviews

    validates :username, presence: true
    validates :age, numericality: {only_integer: true}


    def parties_names
        self.parties.map  do |party|
            party.name
        end.join
    end

    def party_reviewed
        
        self.reviews.map do |review|
        review.content
        end.join(" , ")
    end
    
    def party_count
        self.parties.count
    end

    def favorite_party
        self.reviews.map do |rating|
            rating
        end.max
    end
end
