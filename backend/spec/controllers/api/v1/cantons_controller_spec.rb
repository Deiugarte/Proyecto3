require "rails_helper"

RSpec.describe Api::V1::CantonsController, type: :controller do

  let(:valid_attributes) do
    {
      name: "Local 1",
      description: "description 1",
      province: create(:province),
    }
  end

  let(:invalid_attributes) do
    { name: nil }
  end

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      canton = Canton.create! valid_attributes
      get :show, params: { id: canton.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    let(:province) { create(:province) }

    let(:valid_canton) do
      {
        canton: {
          name: "Canton 1",
          description: "description 1",
          province_id: province.id,
        },
      }
    end

    context "when the request is valid" do
      before { post :create, params: valid_canton, format: :json }

      it "creates a canton" do
        json_response = JSON.parse(response.body)["id"]
        expect(Canton.find(json_response)).not_to be_nil
      end

      it "returns status code created" do
        expect(response).to have_http_status(:created)
      end

      it "validate @canton" do
        expect(assigns(:canton).name).to match(valid_canton[:canton][:name])
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) do
        {
          name: "Canton 2",
          description: "description 2",
        }
      end

      it "updates the requested canton" do
        canton = Canton.create! valid_attributes
        put :update, params: { id: canton.to_param, canton: new_attributes }, session: valid_session
        canton.reload
        expect(canton.attributes).to include("name" => "Canton 2")
      end

      it "renders a JSON response with the canton" do
        canton = Canton.create! valid_attributes

        put :update, params: { id: canton.to_param, canton: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq("application/json")
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the canton" do
        canton = Canton.create! valid_attributes

        put :update, params: { id: canton.to_param, canton: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested canton" do
      canton = Canton.create! valid_attributes
      expect do
        delete :destroy, params: { id: canton.to_param }, session: valid_session
      end.to change(Canton, :count).by(-1)
    end
  end

end
