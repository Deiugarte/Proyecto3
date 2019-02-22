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

class Category < ApplicationRecord

  validates :name, presence: true
  has_many :category_places, dependent: :destroy
  has_many :places, -> { distinct }, through: :category_places
  has_ancestry

end
