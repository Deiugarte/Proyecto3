require "rails_helper"

RSpec.describe Api::V1::DistrictsController, type: :controller do
  include Docs::V1::Districts::Api

  let(:valid_attributes) do
    {
      name: "District 1",
      description: "description 1",
      canton: create(:canton),
    }
  end

  let(:invalid_attributes) do
    { name: nil }
  end

  let(:valid_session) { {} }

  describe "GET #index" do
    include Docs::V1::Districts::Index

    it "returns a success response", :dox do
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    include Docs::V1::Districts::Show

    it "returns a success response", :dox do
      district = District.create! valid_attributes
      get :show, params: { id: district.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    include Docs::V1::Districts::Create

    let(:canton) { create(:canton) }

    let(:valid_district) do
      {
        district: {
          name: "District 1",
          description: "description 1",
          canton_id: canton.id,
        },
      }
    end

    let(:invalid_district) do
      {
        district: {
          name: nil,
        },
      }
    end

    context "when the request is valid", :dox do
      before { post :create, params: valid_district }

      it "creates a district" do
        json_response = JSON.parse(response.body)["id"]
        expect(District.find(json_response)).not_to be_nil
      end

      it "returns status code created" do
        expect(response).to have_http_status(:created)
      end

      it "validate @district" do
        expect(assigns(:district).name).to match(valid_district[:district][:name])
      end
    end

    context "when the request is invalid" do
      before { post :create, params: invalid_district }

      it "return status code unprocessable_entity" do
        expect(response).to have_http_status(:unprocessable_entity)
      end

    end
  end

  describe "PUT #update" do
    include Docs::V1::Districts::Update
    context "with valid params", :dox do
      let(:new_attributes) do
        {
          name: "District 2",
          description: "description 2",
        }
      end

      it "updates the requested district" do
        district = District.create! valid_attributes
        put :update, params: { id: district.to_param, district: new_attributes }, session: valid_session
        district.reload
        expect(district.attributes).to include("name" => "District 2")
      end

      it "renders a JSON response with the district" do
        district = District.create! valid_attributes

        put :update, params: { id: district.to_param, district: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq("application/json")
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the district" do
        district = District.create! valid_attributes

        put :update, params: { id: district.to_param, district: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "DELETE #destroy" do
    include Docs::V1::Districts::Destroy

    it "destroys the requested district", :dox do
      district = District.create! valid_attributes
      expect do
        delete :destroy, params: { id: district.to_param }, session: valid_session
      end.to change(District, :count).by(-1)
    end
  end

end
