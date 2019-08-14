class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :announcements do |t|
      t.references :teams, foreign_key: true
      t.references :players, foreign_key: true
      t.integer :goals
      t.integer :yellowcard
      t.integer :redcard

      t.timestamps
    end
  end
end
