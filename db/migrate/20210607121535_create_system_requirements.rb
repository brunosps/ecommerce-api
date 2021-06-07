class CreateSystemRequirements < ActiveRecord::Migration[6.1]
  def change
    create_table :system_requirements do |t|
      t.string :name, null: false
      t.string :operational_system, null: false
      t.string :storage, null: false
      t.string :processor, null: false
      t.string :memory, null: false
      t.string :video_board, null: false

      t.timestamps
    end
  end
end
