class AddUserDetailToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :address, :string, null: false
    add_column :users, :phone_number, :string, null: false
    add_column :users, :prefecture, :string, null: false
    add_column :users, :allergy_note, :text , null: false
    add_column :users, :delivery_frequency, :string, null: false
    add_column :users, :plan_type, :string, null: false
  end
end
