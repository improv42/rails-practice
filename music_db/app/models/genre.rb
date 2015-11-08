# Lays out the Genre relationships
class Genre < ActiveRecord::Base
  has_many :artists
end
