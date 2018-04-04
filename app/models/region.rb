class Region < ApplicationRecord
  has_one :country
  has_many :locations
end
