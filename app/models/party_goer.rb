class PartyGoer < ApplicationRecord
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
end
