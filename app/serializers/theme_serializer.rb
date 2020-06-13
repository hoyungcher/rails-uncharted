class ThemeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :slug, :category, :theme_attractions, :attractions
  belongs_to :category

  has_many :theme_attractions
  has_many :attractions

end
