class ThemeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :slug
  belongs_to :category
end
