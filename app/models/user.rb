class User < ApplicationRecord
  has_many :bookings
  has_many :diseases, through: :bookings
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
  validates :address, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
