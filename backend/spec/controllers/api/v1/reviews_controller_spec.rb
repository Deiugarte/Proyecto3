require "rails_helper"

RSpec.describe Api::V1::ReviewsController, type: :controller do
  include Docs::V1::Reviews::Api
  let(:user) { create(:user) }

  before { request.headers.merge! user.create_new_auth_token }
  let(:district) { create(:district) }

  let(:valid_attributes) do
    {
      price: "9.99",
      quality: "9.99",
      service: "9.99",
      average_score: "9.99",
      place: create(:place, district: district, canton: district.canton, province: district.canton.province),
      user: create(:user),
    }
  end

  let(:invalid_attributes) do
    {
      price: nil,
    }

  end

  let(:valid_session) { {} }

  describe "GET #index" do
    include Docs::V1::Reviews::Index
    let(:place) { create(:place, district: district, canton: district.canton, province: district.canton.province) }
    it "returns a success response", :dox do
      get :index, params: { place_id: place.id }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    include Docs::V1::Reviews::Show

    let(:place) { create(:place, district: district, canton: district.canton, province: district.canton.province) }
    it "returns a success response", :dox do
      review = Review.create! valid_attributes
      get :show, params: { place_id: place.id, id: review.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    login_user
    include Docs::V1::Reviews::Create

    let(:place) { create(:place, district: district, canton: district.canton, province: district.canton.province) }

    let(:valid_review) do
      {
        price: "9.99",
        quality: "9.99",
        service: "9.99",
        average_score: "9.99",
        place_id: place.id,
        user_id: user.id,

      }
    end

    let(:invalid_review) do
      {
        price: nil,
      }
    end
    context "with valid params" do
      it "creates a new Review", :dox do
        expect do
          post :create, params: { place_id: place.id, review: valid_review }, session: valid_session
        end.to change(Review, :count).by(1)
      end

      it "renders a JSON response with the new review", :dox do

        post :create, params: { place_id: place.id, review: valid_review }, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq("application/json")
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new review", :dox do

        post :create, params: { place_id: place.id, review: invalid_review }, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "PUT #update" do
    include Docs::V1::Reviews::Update

    let(:place) { create(:place, district: district, canton: district.canton, province: district.canton.province) }
    context "with valid params" do
      let(:new_attributes) do
        {
          price: 2.0,
        }
      end

      it "updates the requested review", :dox do
        review = Review.create! valid_attributes
        put :update, params: { place_id: place.id, id: review.to_param, review: new_attributes }, session: valid_session
        review.reload
        expect(review.attributes).to include("price" => 0.999e1)
      end

      it "renders a JSON response with the review", :dox do
        review = Review.create! valid_attributes

        put :update, params: {
          place_id: place.id, id: review.to_param,
          review: valid_attributes
        }
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq("application/json")
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the review", :dox do
        review = Review.create! valid_attributes

        put :update, params: {
          place_id: place.id,
          id: review.to_param,
          review: invalid_attributes,
        }
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "DELETE #destroy" do
    include Docs::V1::Reviews::Destroy

    let(:place) { create(:place, district: district, canton: district.canton, province: district.canton.province) }
    it "destroys the requested review", :dox do
      review = Review.create! valid_attributes
      expect do
        delete :destroy, params: { place_id: place.id, id: review.to_param }, session: valid_session
      end.to change(Review, :count).by(-1)
    end
  end

end
