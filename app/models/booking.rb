class Booking < ApplicationRecord
  belongs_to :disease
  belongs_to :user
  validates :start_date, presence: true
  validates :duration, presence: true
end
