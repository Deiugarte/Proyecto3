# == Schema Information
#
# Table name: districts
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)
#  description :text(65535)
#  canton_id   :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class District < ApplicationRecord

  validates :name, presence: true
  belongs_to :canton
  has_many :places, dependent: :destroy

end
