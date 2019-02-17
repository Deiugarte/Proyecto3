# == Schema Information
#
# Table name: districts
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)
#  description :text(65535)
#  canton_id   :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DistrictSerializer < ActiveModel::Serializer

  attributes :id, :name, :description, :canton, :province, :featured_places

  def canton
    object.canton.name
  end

  def province
    object.canton.province.name
  end

  def featured_places
    object.places.limit(10).order(created_at: :desc)
  end

end
