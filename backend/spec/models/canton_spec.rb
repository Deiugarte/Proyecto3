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

require "rails_helper"

RSpec.describe Canton, type: :model do
  describe "#validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to belong_to(:province) }
    it { should have_many(:places) }
  end
end
