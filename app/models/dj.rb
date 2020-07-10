class Dj < ApplicationRecord
    has_many :parties

    def dj_party
        self.parties.map do|party|
            party.name
        end.join
    end

    def dj_party_count
       self.parties.count
    end
    

    def self.most_parties
      self.all.max_by do |dj|
        dj.parties.count
      end
    end
    
end
