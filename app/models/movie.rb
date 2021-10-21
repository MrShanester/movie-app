class Movie < ApplicationRecord
  validates :title, :year, presence: true
  validates :plot, presence: true, length: {minimum: 25}
end
