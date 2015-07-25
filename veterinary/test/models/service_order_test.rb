# == Schema Information
#
# Table name: service_orders
#
#  id              :integer          not null, primary key
#  date            :datetime
#  observation     :string(255)
#  price           :integer
#  detail_order_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ServiceOrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
