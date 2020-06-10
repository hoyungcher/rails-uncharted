class CountrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :slug, :iso_3166_1_alpha2, :iso_3166_1_alpha3, :iso_3166_1_numeric
  has_many :localities
  has_many :attractions
end
