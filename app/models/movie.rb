class Movie < ApplicationRecord
  # title, year released req, description optional
  # year released 1800 - 2100

  validates :title, presence: true
  validates :year_released,  presence: true, numericality: { only_integer: true, greater_than: 1800, less_than: 2100 }

end
