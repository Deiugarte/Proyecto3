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

class Place < ApplicationRecord

  validates :name, :telephone, :email, :latitude, :longitude, presence: true
  validate :district_validation
  validate :canton_validation
  validate :province_validation
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode
  belongs_to :province
  belongs_to :canton
  belongs_to :district
  has_many :category_places, dependent: :destroy
  has_many :categories, -> { distinct }, through: :category_places
  has_many :reviews, dependent: :destroy
  has_many :logs, dependent: :destroy

  def district_validation
    errors.add(:district, "Datos no coinciden") if district.present? && canton.districts.find_by(id: district.id).nil?
  end

  def canton_validation
    errors.add(:canton, "Datos no coinciden") if canton.present? && province.cantons.find_by(id: canton.id).nil?
  end

  def province_validation
    errors.add(:province, "Datos no coinciden") if province.present? && province != canton.province
  end

end
