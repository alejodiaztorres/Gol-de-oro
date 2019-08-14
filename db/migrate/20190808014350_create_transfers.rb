class CreateTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :transfers do |t|
      t.references :players, foreign_key: true
      t.references :teams, foreign_key: true
      t.date :debut
      t.string :position

      t.timestamps
    end
  end
end
