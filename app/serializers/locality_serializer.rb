class LocalitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :latitude, :longitude, :slug
end
