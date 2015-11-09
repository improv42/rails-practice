# Lays out the Genre relationships
class Genre < ActiveRecord::Base
  has_many :artists

  validates :genre, presence: true, length: { minimum: 3 }, uniqueness: true
end

# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  genre      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
