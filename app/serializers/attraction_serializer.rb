class AttractionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :types, :latitude, :longitude, :slug
end
