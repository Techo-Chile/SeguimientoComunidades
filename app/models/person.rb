class Person < ApplicationRecord
  has_many :community_persons
  has_many :communities, :through => :community_persons
end
