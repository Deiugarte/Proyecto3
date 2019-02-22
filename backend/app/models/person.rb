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
#

class Person < ApplicationRecord

  belongs_to :user

end
