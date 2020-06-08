class Country < ApplicationRecord
  has_many :localities
  has_many :attractions, through: :localities
end
