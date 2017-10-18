class Movie < ApplicationRecord

  include PosterImageUploader[:poster_image]

  validates :title, presence: true
  validates :year_released,  presence: true, numericality: { only_integer: true, greater_than: 1800, less_than: 2100 }

end
