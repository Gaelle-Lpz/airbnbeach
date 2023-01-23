class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :beach

  has_many :reviews, dependent: :destroy
end
