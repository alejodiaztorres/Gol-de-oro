class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :teams, foreign_key: true
      t.integer :result
      t.string :stadium
      t.string :competition
      t.integer :possession
      t.integer :goalattemps
      t.integer :faults
      t.integer :cornerkicks
      t.date :meetingdate
      t.string :refereename

      t.timestamps
    end
  end
end
