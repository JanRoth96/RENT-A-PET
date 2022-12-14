class Booking < ApplicationRecord
  belongs_to :pet
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true

  enum status: {
    accepted: "accepted",
    rejected: "rejected",
    pending: "pending"
  }
end
