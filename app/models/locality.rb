class Locality < ApplicationRecord
  belongs_to :country
  has_many :attractions
  before_create :slugify

  def slugify
    self.slug = name.parameterize
  end
end
