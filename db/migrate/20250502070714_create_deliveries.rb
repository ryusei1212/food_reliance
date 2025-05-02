class CreateDeliveries < ActiveRecord::Migration[8.0]
  def change
    create_table :deliveries do |t|
      t.references :user, null: false, foreign_key: true, index: false
      t.references :meal_set, null: false, foreign_key: true
      t.date :delivery_date, null: false
      t.string :delivery_time_slot, null: false
      t.string :status, null: false

      t.timestamps
    end
    add_index :deliveries, %i[user_id meal_set_id], unique: true
  end
end
