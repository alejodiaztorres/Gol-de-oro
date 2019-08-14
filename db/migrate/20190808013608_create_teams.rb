class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.date :foundation
      t.string :president
      t.string :coach

      t.timestamps
    end
  end
end
