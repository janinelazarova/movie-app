class Actor < ApplicationRecord

  belongs_to :movie #returns hash of one single movie

  validates :first_name, :last_name, length: { minimum: 2 }
  validates :known_for, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 13 }

end
