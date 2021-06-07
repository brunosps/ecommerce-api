class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :mode, null: false
      t.datetime :release_date, null: false
      t.string :developer, null: false
      t.references :system_requirement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
