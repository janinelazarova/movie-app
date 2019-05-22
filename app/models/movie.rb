class Movie < ApplicationRecord
  
  has_many :actors #returns array of many actors

  validates :title, presence: true
  validates :year, numericality: { only_integer: true }
  validates :english, inclusion: { in: [true, false] }
  validates :english, exclusion: { in: [nil] }

end
