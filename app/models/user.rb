class User < ApplicationRecord
  has_many :bookings
  has_one :shelter

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def bookings_as_owner
    shelter.bookings
  end
end
