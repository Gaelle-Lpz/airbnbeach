class Beach < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :name, :location, :price, :description, presence: :true
end
