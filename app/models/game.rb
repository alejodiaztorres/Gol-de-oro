class Game < ApplicationRecord
  belongs_to :team
  has_many :announcements
end
