# == Schema Information
#
# Table name: categories
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ancestry   :string(255)
#

require "rails_helper"

RSpec.describe Category, type: :model do
  describe "#validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to have_many(:places) }
  end
end
