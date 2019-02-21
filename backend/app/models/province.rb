# == Schema Information
#
# Table name: provinces
#
#  id         :bigint(8)        not null, primary key
#  name       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Province < ApplicationRecord

  enum name: {
    "San José" => 1,
    "Alajuela" => 2,
    "Heredia" => 3,
    "Guanacaste" => 4,
    "Puntarenas" => 5,
    "Limón" => 6,
    "Cartago" => 7,
  }
  validates :name, presence: true
  has_many :places, dependent: :destroy
  has_many :cantons, dependent: :destroy

end
