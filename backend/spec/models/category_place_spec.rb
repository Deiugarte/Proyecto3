# == Schema Information
#
# Table name: category_places
#
#  id          :bigint(8)        not null, primary key
#  category_id :bigint(8)
#  place_id    :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require "rails_helper"

RSpec.describe CategoryPlace, type: :model do
  describe "#validations" do
    it { is_expected.to belong_to(:category) }
    it { is_expected.to belong_to(:place) }
  end
end
