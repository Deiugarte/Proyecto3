# == Schema Information
#
# Table name: reviews
#
#  id            :bigint(8)        not null, primary key
#  price         :decimal(5, 2)
#  quality       :decimal(5, 2)
#  service       :decimal(5, 2)
#  average_score :decimal(5, 2)
#  place_id      :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :bigint(8)
#

require "rails_helper"

RSpec.describe Review, type: :model do
  describe "#validations" do
    it { is_expected.to validate_presence_of(:quality) }
    it { is_expected.to validate_presence_of(:service) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:average_score) }
    it { is_expected.to belong_to(:place) }
  end
end
