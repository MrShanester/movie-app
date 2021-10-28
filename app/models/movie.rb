class Movie < ApplicationRecord
  validates :title, :year, presence: true
  validates :plot, presence: true, length: {minimum: 25}
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genre_names = []
    genres.each do |gen|
      genre_names << gen.name
    end
    return genre_names
  end

end
