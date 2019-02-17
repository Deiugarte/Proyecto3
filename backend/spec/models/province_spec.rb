# == Schema Information
#
# Table name: provinces
#
#  id         :bigint(8)        not null, primary key
#  name       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "rails_helper"

RSpec.describe Province, type: :model do
  describe "#validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { should have_many(:places) }
    it { should have_many(:cantons) }
  end
end
