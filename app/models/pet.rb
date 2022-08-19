class Pet < ApplicationRecord
  belongs_to :shelter
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :gender, presence: true
  validates :species, presence: true
  validates :age, presence: true
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 6 }

  include PgSearch::Model
  pg_search_scope :search_by_species,
  against: [ :species ],
    associated_against: {
    shelter: [ :location ]
  },
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

end
