class MealSet < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true

  scope :default_order, -> { order(:id) }
end
