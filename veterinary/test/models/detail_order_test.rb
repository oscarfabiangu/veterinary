# == Schema Information
#
# Table name: detail_orders
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DetailOrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
