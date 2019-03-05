require "rails_helper"

RSpec.describe "Api::V1::Reviews", type: :request do
  describe "GET /api/v1/place/1/reviews" do
    let(:place) { create(:place) }
    it "works! (now write some real specs)" do
      get api_v1_place_reviews_path(place.id)
      expect(response).to have_http_status(200)
    end
  end
end
