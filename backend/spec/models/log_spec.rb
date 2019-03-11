# == Schema Information
#
# Table name: logs
#
#  id          :bigint(8)        not null, primary key
#  description :string(255)
#  latitude    :decimal(10, 6)
#  longitude   :decimal(10, 6)
#  user_id     :bigint(8)
#  place_id    :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require "rails_helper"

RSpec.describe Log, type: :model do
  describe "#validations" do
    it { is_expected.to validate_presence_of(:latitude) }
    it { is_expected.to validate_presence_of(:longitude) }
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:place).optional }
  end
end
