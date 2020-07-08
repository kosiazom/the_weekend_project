class Promoter < ApplicationRecord
    has_many :parties

    def promoter_party
        self.parties.map do|party|
            party.name
        end.join
    end
    
end
