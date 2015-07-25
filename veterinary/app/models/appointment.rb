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

class Appointment < ActiveRecord::Base
  belongs_to :customer
end
