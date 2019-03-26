require "rails_helper"

RSpec.describe Api::V1::LogsController, type: :controller do
  include Docs::V1::Logs::Api
  let(:district) { create(:district) }
  let(:valid_attributes) do
    {
      latitude: Faker::Address.latitude,
      longitude: Faker::Address.longitude,
      user: create(:user),
      place: create(:place, district: district, province: district.canton.province, canton: district.canton),
    }
  end

  let(:invalid_attributes) do
    { latitude: nil }
  end

  let(:valid_session) { {} }

  describe "GET #index" do
    include Docs::V1::Logs::Index

    it "returns a success response", :dox do
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    include Docs::V1::Logs::Show

    it "returns a success response", :dox do
      district = create(:district)
      place = create(:place, district: district, canton: district.canton, province: district.canton.province)
      log = create(:log, place: place)
      get :show, params: { id: log.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    include Docs::V1::Logs::Create

    context "with valid params", :dox do
      let(:user) { create(:user) }
      before { request.headers.merge! user.create_new_auth_token }
      it "creates a new Log" do
        expect do
          post :create, params: { log: valid_attributes }, session: valid_session
        end.to change(Log, :count).by(1)
      end

      it "renders a JSON response with the new log" do

        post :create, params: { log: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq("application/json")
      end
    end

    context "with invalid params", :dox do
      let(:user) { create(:user) }
      before { request.headers.merge! user.create_new_auth_token }
      it "renders a JSON response with errors for the new log" do

        post :create, params: { log: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end

    context "with no authentication", :dox do
      it "returns a 401" do
        post :create, params: { log: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:unauthorized)
      end
    end
  end

end
