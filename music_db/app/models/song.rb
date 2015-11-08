# Lays out the song relationships
class Song < ActiveRecord::Base
  belongs_to :artist
end
