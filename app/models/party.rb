class Party < ApplicationRecord
    belongs_to :promoter
    belongs_to :dj
    has_many :guestlists
    has_many :party_goers, through: :guestlists
    has_many :reviews
end
