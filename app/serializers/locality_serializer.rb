class LocalitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :latitude, :longitude, :slug
  belongs_to :country
end
