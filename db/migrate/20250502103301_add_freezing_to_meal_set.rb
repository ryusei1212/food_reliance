class AddFreezingToMealSet < ActiveRecord::Migration[8.0]
  def change
    add_column :meal_sets, :freezing, :boolean, null: false, default: false
  end
end
