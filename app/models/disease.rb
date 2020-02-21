class Disease < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  has_one_attached :image

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
