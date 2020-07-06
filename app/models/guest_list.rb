class GuestList < ApplicationRecord
    belongs_to :party
    belongs_to :party_goer

end
