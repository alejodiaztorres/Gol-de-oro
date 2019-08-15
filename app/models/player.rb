class Player < ApplicationRecord
    has_many :transfers
    has_many :announcements
end
