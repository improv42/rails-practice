# Lays out the song relationships
class Song < ActiveRecord::Base
  belongs_to :artist
end

# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :string
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_songs_on_artist_id  (artist_id)
#
