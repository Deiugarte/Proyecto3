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

FactoryBot.define do
  factory :place do
    name { Faker::Restaurant.name }
    telephone { Faker::PhoneNumber.phone_number }
    email { Faker::Internet.email }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    province
    canton
    district
  end
end
