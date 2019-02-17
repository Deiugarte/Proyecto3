require "rails_helper"

RSpec.describe Api::V1::PlacesController, type: :controller do

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
    context "when topics present" do
      let!(:places) { create_list(:place, 3) }

      before { get :index, format: :json }

      it "response is not empty" do
        json_response = JSON.parse(response.body)
        expect(json_response).not_to be_empty
      end

      it "returns status code ok" do
        expect(response).to have_http_status(:ok)
      end

      it "validate @topics" do
        expect(assigns(:places)).to match_array(places)
      end
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      place = Place.create! valid_attributes
      get :show, params: { id: place.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
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

    context "when the request is valid" do
      before { post :create, params: valid_place, format: :json }

      it "creates a topic" do
        json_response = JSON.parse(response.body)["id"]
        expect(Place.find(json_response)).not_to be_nil
      end

      it "returns status code created" do
        expect(response).to have_http_status(:created)
      end

      it "validate @place" do
        expect(assigns(:place).name).to match(valid_place[:place][:name])
      end
    end
  end

  describe "PUT #update" do
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

      it "updates the requested place" do
        place = Place.create! valid_attributes
        put :update, params: { id: place.to_param, place: new_attributes }, session: valid_session
        place.reload
        expect(place.attributes).to include("name" => "Local 2")
      end

      it "renders a JSON response with the place" do
        place = Place.create! valid_attributes

        put :update, params: { id: place.to_param, place: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq("application/json")
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the place" do
        place = Place.create! valid_attributes

        put :update, params: { id: place.to_param, place: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested place" do
      place = Place.create! valid_attributes
      expect do
        delete :destroy, params: { id: place.to_param }, session: valid_session
      end.to change(Place, :count).by(-1)
    end
  end

end
