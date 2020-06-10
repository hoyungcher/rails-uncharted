class AttractionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :types, :latitude, :longitude, :slug, :locality

  attribute :country do |object|
    "#{object.locality.country.name}"
  end

  belongs_to :locality
end
