class Pet < ApplicationRecord
  belongs_to :shelter
  has_many :bookings

  validates :name, presence: true
  validates :gender, presence: true
  validates :species, presence: true
  validates :age, presence: true
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 6 }

  include PgSearch::Model
  pg_search_scope :search_by_species,
  against: [ :species ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

end
