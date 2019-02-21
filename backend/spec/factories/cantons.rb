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

FactoryBot.define do
  factory :canton do
    name { Faker::Address.city }
    description { Faker::Lorem.paragraph }
    province
  end
end
