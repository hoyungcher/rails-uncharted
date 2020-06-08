class Category < ApplicationRecord
  has_many :themes
  before_create :slugify

  def slugify
    self.slug = name.parameterize
  end
end
