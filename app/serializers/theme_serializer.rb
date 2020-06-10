class ThemeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :slug, :category
  belongs_to :category
end
