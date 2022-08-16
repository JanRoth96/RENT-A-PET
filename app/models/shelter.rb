class Shelter < ApplicationRecord
  belongs_to :user
  has_many :pets
  has_many :bookings, through: :pets

  validates :name, presence: true
  valudates :location, presence: true
end
