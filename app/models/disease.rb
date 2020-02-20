class Disease < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  has_one_attached :image
end
