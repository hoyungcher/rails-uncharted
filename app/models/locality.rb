class Locality < ApplicationRecord
  belongs_to :country
  has_many :attractions
  before_create :slugify
  geocoded_by :name
  after_validation :geocode, if: :will_save_change_to_name?

  def slugify
    self.slug = name.parameterize
  end
end
