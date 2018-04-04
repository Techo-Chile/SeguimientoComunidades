class Community < ApplicationRecord
  has_one :location
  has_one :status
  has_many :community_people
  has_many :people, :through => :community_people
end
