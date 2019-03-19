require "rails_helper"

RSpec.describe Api::V1::PlacesController, api: true, type: :controller do
  include Docs::V1::Places::Api

  let(:valid_attributes) do
    {
      name: "Local 1",
      email: "local1@example.com",
      telephone: "435-604-5688",
      latitude: Faker::Address.latitude,
      longitude: Faker::Address.longitude,
      province: create(:province),
      canton: create(:canton),
      district: create(:district),
    }
  end

  let(:invalid_attributes) do
    { name: nil, telephone: nil, email: nil }
  end

  let(:valid_session) { {} }

  describe "GET #index" do
    include Docs::V1::Places::Index

    it "returns a success response", :dox do
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    include Docs::V1::Places::Show

    it "returns a success response", :dox do
      district = create(:district)
      place = create(:place, district: district, canton: district.canton, province: district.canton.province)
      get :show, params: { id: place.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #nearby" do
    include Docs::V1::Places::Nearby

    it "returns a success response", :dox do
      district = create(:district)
      create(
        :place,
        name: "La Princesa Marina",
        latitude: "9.934460",
        longitude: "-84.110361",
        district: district,
        canton: district.canton,
        province: district.canton.province,
      )
      place = create(
        :place,
        name: "Starbucks Sabana",
        latitude: "9.937736",
        longitude: "-84.109524",
        district: district,
        canton: district.canton,
        province: district.canton.province,
      )
      get :nearby, params: { id: place.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    include Docs::V1::Places::Create

    let(:district) { create(:district) }

    let(:valid_place) do
      {
        place: {
          name: "Local 1",
          email: "local1@example.com",
          telephone: "435-604-5688",
          latitude: Faker::Address.latitude,
          longitude: Faker::Address.longitude,
          province_id: district.canton.province.id,
          canton_id: district.canton.id,
          district_id: district.id,
        },
      }
    end

    let(:invalid_place) do
      {
        place: {
          name: nil,
        },
      }
    end

    context "when the request is valid", :dox do
      before { post :create, params: valid_place }

      it "creates a place" do
        json_response = JSON.parse(response.body)["id"]
        expect(Place.find(json_response)).not_to be_nil
      end

      it "returns status code created" do
        expect(response).to have_http_status(:created)
      end

      it "validate place" do
        expect(assigns(:place).name).to match(valid_place[:place][:name])
      end
    end

    context "when the request is invalid", :dox do
      before { post :create, params: invalid_place }

      it "return status code unprocessable_entity" do
        expect(response).to have_http_status(:unprocessable_entity)
      end

    end
  end

  describe "PUT #update" do
    include Docs::V1::Places::Update

    context "with valid params" do
      let(:new_attributes) do
        {
          name: "Local 2",
          email: "local2@example.com",
          telephone: "436-604-5688",
          latitude: Faker::Address.latitude,
          longitude: Faker::Address.longitude,
        }
      end

      it "updates the requested place", :dox do
        district = create(:district)
        place = create(:place, district: district, canton: district.canton, province: district.canton.province)
        put :update, params: { id: place.to_param, place: new_attributes }, session: valid_session
        place.reload
        expect(place.attributes).to include("name" => "Local 2")
      end

      it "renders a JSON response with the place" do
        district = create(:district)
        place = create(:place, district: district, canton: district.canton, province: district.canton.province)

        put :update, params: { id: place.to_param, place: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq("application/json")
      end
    end

    context "with invalid params", :dox do
      it "renders a JSON response with errors for the place" do
        district = create(:district)
        place = create(:place, district: district, canton: district.canton, province: district.canton.province)

        put :update, params: { id: place.to_param, place: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "DELETE #destroy" do
    include Docs::V1::Places::Destroy

    it "destroys the requested place", :dox do
      district = create(:district)
      place = create(:place, district: district, canton: district.canton, province: district.canton.province)
      expect do
        delete :destroy, params: { id: place.to_param }, session: valid_session
      end.to change(Place, :count).by(-1)
    end
  end

end
