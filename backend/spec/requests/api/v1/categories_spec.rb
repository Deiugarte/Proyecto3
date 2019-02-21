require "rails_helper"

RSpec.describe "Api::V1::Categories", type: :request do
  describe "GET /api/v1/categories" do
    it "works! (now write some real specs)" do
      get api_v1_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
