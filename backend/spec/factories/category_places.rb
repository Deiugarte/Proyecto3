# == Schema Information
#
# Table name: category_places
#
#  id          :bigint(8)        not null, primary key
#  category_id :bigint(8)
#  place_id    :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :category_place do
    category
    place
  end
end
