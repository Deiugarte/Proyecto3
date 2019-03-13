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
#

class Place < ApplicationRecord

  validates :name, :telephone, :email, :latitude, :longitude, presence: true
  belongs_to :province
  belongs_to :canton
  belongs_to :district
  has_many :category_places, dependent: :destroy
  has_many :categories, -> { distinct }, through: :category_places
  has_many :reviews, dependent: :destroy
end
