class Attraction < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  belongs_to :locality
  has_many :theme_attractions
  has_many :themes, through: :theme_attractions
  before_create :slugify
  geocoded_by :name
  after_validation :geocode, if: :will_save_change_to_name?

  def slugify
    self.slug = name.parameterize
  end
end
