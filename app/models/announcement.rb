class Announcement < ApplicationRecord
  belongs_to :team
  belongs_to :player
  belongs_to :game
end
