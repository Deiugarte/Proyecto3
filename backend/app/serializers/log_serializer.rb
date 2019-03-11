# == Schema Information
#
# Table name: logs
#
#  id          :bigint(8)        not null, primary key
#  description :string(255)
#  latitude    :decimal(10, 6)
#  longitude   :decimal(10, 6)
#  user_id     :bigint(8)
#  place_id    :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class LogSerializer < ActiveModel::Serializer

  attributes :id, :description, :latitude, :longitude
  has_one :user
  has_one :place

end
