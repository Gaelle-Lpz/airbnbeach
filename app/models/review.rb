class Review < ApplicationRecord
  belongs_to :booking
  validates :rating, presence: true
  validates :comment, presence: true
end
