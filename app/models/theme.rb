class Theme < ApplicationRecord
  belongs_to :category
  has_many :theme_attractions
  has_many :attractions, through: :theme_attractions
end
