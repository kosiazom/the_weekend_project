class Promoter < ApplicationRecord
    has_many :parties

    def promoter_party
        self.parties.map do|party|
            party.name
        end.join
    end

    def party_count
        self.parties.count
    end
    
    # def highest_reviewed
    #     self.parties.each  do |party|
    #         party.reviews.ratings
    #     end
    # end
end

# How many parties a promoter has
# Highest reviewed party
