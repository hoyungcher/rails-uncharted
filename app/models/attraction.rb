class Attraction < ApplicationRecord
  belongs_to :locality
  has_many :theme_attractions
  has_many :themes, through: :theme_attractions
end
