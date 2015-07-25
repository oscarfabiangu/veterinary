# == Schema Information
#
# Table name: appointments
#
#  id          :integer          not null, primary key
#  date        :datetime
#  description :string(255)
#  state       :string(255)
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
