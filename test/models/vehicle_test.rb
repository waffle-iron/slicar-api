# == Schema Information
#
# Table name: vehicles
#
#  id                :integer          not null, primary key
#  title             :string
#  model             :integer
#  color             :string
#  short_description :string
#  long_description  :text
#  price_per_hour    :decimal(, )
#  price_per_day     :decimal(, )
#  transmission      :integer
#  doors             :integer
#  passengers        :integer
#  air_conditioner   :boolean
#  luggage           :boolean
#  dvd               :boolean
#  gps               :boolean
#  radio             :boolean
#  usb               :boolean
#  fuelt_type        :integer
#  latitude          :decimal(, )
#  longitude         :decimal(, )
#  user_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
