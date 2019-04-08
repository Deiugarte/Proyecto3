# == Schema Information
#
# Table name: places
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)
#  telephone   :string(255)
#  email       :string(255)
#  latitude    :decimal(10, 6)
#  longitude   :decimal(10, 6)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  province_id :bigint(8)
#  canton_id   :bigint(8)
#  district_id :bigint(8)
#  address     :text(65535)
#

require "rails_helper"

RSpec.describe Place, type: :model do
  describe "#validations" do
    let(:district) { create(:district) }
    subject(:place) { create(:place, district: district, canton: district.canton, province: district.canton.province) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:telephone) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:latitude) }
    it { is_expected.to validate_presence_of(:longitude) }
    it { is_expected.to have_many(:categories) }
    it { is_expected.to have_many(:reviews) }
  end

  describe "district validation" do
    let(:district) { create(:district) }

    it "expects to create a valid place" do
      place = create(:place, district: district, canton: district.canton, province: district.canton.province)
      expect(place).to be_valid
    end

    it "expects to render district error" do
      canton = create(:canton)
      district = create(:district)
      place = build(:place, canton: canton, province: canton.province, district: district)
      place.valid?
      expect(place.errors[:district].size).to eq(1)
    end

    it "expects to render canton error" do
      canton = create(:canton)
      district = create(:district)
      place = build(:place, canton: canton, province: district.canton.province, district: district)
      place.valid?
      expect(place.errors[:canton].size).to eq(1)
    end

    it "expects to render province error" do
      province = create(:province)
      district = create(:district)
      place = build(:place, canton: district.canton, province: province, district: district)
      place.valid?
      expect(place.errors[:province].size).to eq(1)
    end
  end

  describe "district validation" do
    let(:district) { create(:district) }

    it "expects to create a valid place" do
      place = create(:place, district: district, canton: district.canton, province: district.canton.province)
      expect(place).to be_valid
    end

    it "expects to render district error" do
      canton = create(:canton)
      district = create(:district)
      place = build(:place, canton: canton, province: canton.province, district: district)
      place.valid?
      expect(place.errors[:district].size).to eq(1)
    end

    it "expects to render canton error" do
      canton = create(:canton)
      district = create(:district)
      place = build(:place, canton: canton, province: district.canton.province, district: district)
      place.valid?
      expect(place.errors[:canton].size).to eq(1)
    end

    it "expects to render province error" do
      province = create(:province)
      district = create(:district)
      place = build(:place, canton: district.canton, province: province, district: district)
      place.valid?
      expect(place.errors[:province].size).to eq(1)
    end
  end
end
