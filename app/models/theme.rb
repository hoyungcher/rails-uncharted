class Theme < ApplicationRecord
  belongs_to :category
  has_many :theme_attractions, dependent: :destroy
  has_many :attractions, through: :theme_attractions
  before_create :slugify

  def slugify
    self.slug = name.parameterize
  end
end
