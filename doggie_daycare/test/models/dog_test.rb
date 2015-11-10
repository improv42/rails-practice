require 'test_helper'

class DogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
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
