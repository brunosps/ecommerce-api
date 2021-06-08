class CreateCoupons < ActiveRecord::Migration[6.1]
  def change
    create_table :coupons do |t|
      t.string :name, null: false
      t.string :code, null: false
      t.integer :status, null: false
      t.decimal :discount_value, precision: 5, scale: 2, null: false
      t.integer :max_use, null: false
      t.datetime :due_date, null: false

      t.timestamps
    end
  end
end
