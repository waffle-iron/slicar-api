# == Schema Information
#
# Table name: payments
#
#  id             :integer          not null, primary key
#  reservation_id :integer
#  date           :datetime
#  transaction_id :string
#  status         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Payment < ApplicationRecord
  belongs_to :reservation
end
