# == Schema Information
#
# Table name: reservations
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  vehicle_id    :integer
#  date          :datetime
#  pickup_date   :datetime
#  delivery_date :datetime
#  value         :decimal(, )
#  status        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
end
