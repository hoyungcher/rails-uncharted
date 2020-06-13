class ThemeAttractionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :theme, :attraction
  belongs_to :theme
  belongs_to :attraction

end
