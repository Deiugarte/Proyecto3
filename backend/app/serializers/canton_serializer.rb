# == Schema Information
#
# Table name: cantons
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)
#  description :text(65535)
#  province_id :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CantonSerializer < ActiveModel::Serializer

  attributes :id, :name, :description, :province, :featured_places

  def province
    object.province.name
  end

  def featured_places
    object.places.limit(10).order(created_at: :desc)
  end

end
