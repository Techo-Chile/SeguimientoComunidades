class Location < ApplicationRecord
  has_one :region
  has_many :communities
end
