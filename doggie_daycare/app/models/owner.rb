# Defines the Owners
class Owner < ActiveRecord::Base
  has_many :dogs

  validates :name, :phone, presence: true
  validates :name, length: { minimum: 2 }
  validates :phone, length: { minimum: 7 }
end

# == Schema Information
#
# Table name: owners
#
#  id         :integer          not null, primary key
#  name       :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
