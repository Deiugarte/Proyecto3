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

FactoryBot.define do
  factory :log do
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    user
    place
  end
end
