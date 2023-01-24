class Beach < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :name, :location, :price, :description, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?


  include PgSearch::Model

  pg_search_scope :beach_search,
    against: [ :location, :name ],
    using: {
      tsearch: { prefix: true }
    }

  def average_rating
    avg_rating = 0.0
    reviews.each { |review| avg_rating += review.rating / reviews.size }
    return avg_rating
  end

end
