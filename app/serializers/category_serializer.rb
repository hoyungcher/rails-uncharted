class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :slug
end
