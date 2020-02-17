class Disease < ApplicationRecord
  has_many :bookings
  validates :name, presence: true
  validates :description, presence: true
end
