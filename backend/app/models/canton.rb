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

class Canton < ApplicationRecord

  validates :name, presence: true
  belongs_to :province
  has_many :districts, dependent: :destroy
  has_many :places, dependent: :destroy

end
