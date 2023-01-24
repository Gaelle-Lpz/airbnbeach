class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :beach
  has_many :reviews, dependent: :destroy

  def total_price
    return ((end_date - start_date).to_i) * beach.price
  end
 
end
