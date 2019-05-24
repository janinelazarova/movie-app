class Movie < ApplicationRecord
  
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  has_many :actors #returns array of many actors

  validates :title, presence: true
  validates :year, numericality: { only_integer: true }
  validates :english, inclusion: { in: [true, false] }
  validates :english, exclusion: { in: [nil] }


  def genre_names
    genres.map { |genre| genre.name }
  end

end
