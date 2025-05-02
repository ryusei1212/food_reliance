class CreateMealSets < ActiveRecord::Migration[8.0]
  def change
    create_table :meal_sets do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.text :description, null: false, default: ''
      t.float :weight, null: false, default: 0.0

      t.timestamps
    end
  end
end
