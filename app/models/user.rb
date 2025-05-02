class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  extend Enumerize

  has_many :deliveries, dependent: :destroy

  enumerize :plan_type, in: %i[basic premium family]
  enumerize :delivery_frequency, in: %i[weekly biweekly]

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :prefecture, presence: true
  validates :allergy_note, presence: true
  validates :delivery_frequency, presence: true
  validates :plan_type, presence: true
end
