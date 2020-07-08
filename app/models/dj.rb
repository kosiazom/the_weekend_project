class Dj < ApplicationRecord
    has_many :parties

    def dj_party
        self.parties.map do|party|
            party.name
        end.join
    end
end
