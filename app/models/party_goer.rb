class PartyGoer < ApplicationRecord
    has_many :guest_lists
    has_many :parties, through: :guest_lists
    has_many :reviews

    validates :name, presence: true
    validates :age, numericality: {only_integer: true}

end
