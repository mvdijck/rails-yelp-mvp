class Review < ApplicationRecord
  RATING = (0..5)

  belongs_to :restaurant
  validates :content, length: { minimum: 5 }, presence: true
  validates :rating, numericality: { only_integer: true },inclusion: { in: RATING, allow_nill: false }, presence: true
end
