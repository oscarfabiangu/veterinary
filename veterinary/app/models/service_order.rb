class ServiceOrder < ActiveRecord::Base
  belongs_to :detail_order
end
