class AddGameToAnnouncements < ActiveRecord::Migration[5.2]
  def change
    add_reference :announcements, :game, foreign_key: true
  end
end
