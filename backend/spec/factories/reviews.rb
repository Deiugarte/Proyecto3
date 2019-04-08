# == Schema Information
#
# Table name: reviews
#
#  id            :bigint(8)        not null, primary key
#  price         :decimal(5, 2)
#  quality       :decimal(5, 2)
#  service       :decimal(5, 2)
#  average_score :decimal(5, 2)
#  place_id      :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :bigint(8)
#

FactoryBot.define do
  factory :review do
    price { "9.99" }
    quality { "9.99" }
    service { "9.99" }
    average_score { "9.99" }
    places
  end
end
