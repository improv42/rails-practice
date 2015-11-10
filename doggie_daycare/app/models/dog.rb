# Defines the Dog model
class Dog < ActiveRecord::Base
  belongs_to :owner

  validates :name, :owner, :breed, :age, presence: true
  validates :name, :breed, length: { minimum: 2 }
  validates :age, numericality: true
end

# == Schema Information
#
# Table name: dogs
#
#  id         :integer          not null, primary key
#  name       :string
#  breed      :string
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :integer
#
