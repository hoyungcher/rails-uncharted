class LocalitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :latitude, :longitude, :slug, :country_id
end
