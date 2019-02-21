# == Schema Information
#
# Table name: provinces
#
#  id         :bigint(8)        not null, primary key
#  name       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :province do
    name { "San José" }
  end
end
