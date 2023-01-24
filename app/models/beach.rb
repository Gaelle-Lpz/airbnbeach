class Beach < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :name, :location, :price, :description, presence: true
  def average_rating
    avg_rating = 0.0
    reviews.each { |review| avg_rating += review.rating / reviews.size }
    return avg_rating
  end
end
