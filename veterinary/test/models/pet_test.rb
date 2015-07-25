# == Schema Information
#
# Table name: pets
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  race        :string(255)
#  age         :string(255)
#  weight      :string(255)
#  sex         :string(255)
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
