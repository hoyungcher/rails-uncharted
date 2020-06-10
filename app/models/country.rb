class Country < ApplicationRecord
  has_many :localities, dependent: :destroy
  has_many :attractions, through: :localities
  before_create :slugify

  def slugify
    self.slug = name.parameterize
  end
end
