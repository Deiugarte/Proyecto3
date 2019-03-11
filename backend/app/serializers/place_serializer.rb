# == Schema Information
#
# Table name: places
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)
#  telephone   :string(255)
#  email       :string(255)
#  latitude    :decimal(10, 6)
#  longitude   :decimal(10, 6)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  province_id :bigint(8)
#  canton_id   :bigint(8)
#  district_id :bigint(8)
#  address     :text(65535)
#

class PlaceSerializer < ActiveModel::Serializer

  attributes :id, :name, :telephone, :email, :latitude, :longitude, :address, :province, :canton, :district
  has_many :categories

  def province
    object.province.name
  end

  def canton
    object.canton.name
  end

  def district
    object.district.name
  end

end
