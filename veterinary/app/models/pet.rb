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

class Pet < ActiveRecord::Base
  belongs_to :customer
end
