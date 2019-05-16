class Movie < ApplicationRecord
  
  validates :title, presence: true
  validates :year, numericality: { only_integer: true }
  validates :english, inclusion: { in: [true, false] }
  validates :english, exclusion: { in: [nil] }

end
