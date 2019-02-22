# == Schema Information
#
# Table name: categories
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ancestry   :string(255)
#

class CategorySerializer < ActiveModel::Serializer

  attributes :id, :name, :subcategories
  has_many :places

  def subcategories
    object.children
  end

end
