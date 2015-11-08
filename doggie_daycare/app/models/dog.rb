# Defines the Dog model
class Dog < ActiveRecord::Base
  belongs_to :owner
end
