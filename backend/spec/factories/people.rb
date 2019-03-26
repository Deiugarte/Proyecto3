# == Schema Information
#
# Table name: people
#
#  id         :bigint(8)        not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  birth_date :date
#  phone      :string(255)
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gender     :integer
#

FactoryBot.define do
  factory :person do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    birth_date { Faker::Date.birthday(18, 65) }
    phone { Faker::PhoneNumber.phone_number }
    gender { rand(0..2) }

    trait :with_user do
      user
    end
  end
end
