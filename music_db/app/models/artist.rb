# Lays out the Artist relationships
class Artist < ActiveRecord::Base
  has_many :songs
  belongs_to :genre
end
