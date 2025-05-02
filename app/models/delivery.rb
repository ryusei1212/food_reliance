class Delivery < ApplicationRecord
  belongs_to :user
  belongs_to :meal_set
end
