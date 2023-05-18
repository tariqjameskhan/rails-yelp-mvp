class Review < ApplicationRecord
  belongs_to :restuarant

  validates :rating, :content, presence: true
  validates :rating, numericality: { less_than_or_equal_to: 5, only_numeric: true }
end
