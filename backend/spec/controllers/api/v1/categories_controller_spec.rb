require "rails_helper"

RSpec.describe Api::V1::CategoriesController, type: :controller do
  include Docs::V1::Categories::Api

  let(:valid_attributes) do
    {
      name: "Category 1",
    }
  end

  let(:invalid_attributes) do
    { name: nil }
  end

  let(:valid_session) { {} }

  describe "GET #index" do
    include Docs::V1::Categories::Index

    it "returns a success response", :dox do
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    include Docs::V1::Categories::Show

    it "returns a success response", :dox do
      category = Category.create! valid_attributes
      get :show, params: { id: category.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    include Docs::V1::Categories::Create

    context "with valid params", :dox do
      it "creates a new Category" do
        expect do
          post :create, params: { category: valid_attributes }, session: valid_session
        end.to change(Category, :count).by(1)
      end

      it "renders a JSON response with the new category" do

        post :create, params: { category: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq("application/json")
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new category" do

        post :create, params: { category: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "PUT #update" do
    include Docs::V1::Categories::Update

    context "with valid params" do
      let(:new_attributes) do
        {
          name: "Category 2",
        }
      end

      it "updates the requested category", :dox do
        category = Category.create! valid_attributes
        put :update, params: { id: category.to_param, category: new_attributes }, session: valid_session
        category.reload
        expect(category.attributes).to include("name" => "Category 2")
      end

      it "renders a JSON response with the category" do
        category = Category.create! valid_attributes

        put :update, params: { id: category.to_param, category: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq("application/json")
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the category" do
        category = Category.create! valid_attributes

        put :update, params: { id: category.to_param, category: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "DELETE #destroy" do
    include Docs::V1::Categories::Destroy

    it "destroys the requested category", :dox do
      category = Category.create! valid_attributes
      expect do
        delete :destroy, params: { id: category.to_param }, session: valid_session
      end.to change(Category, :count).by(-1)
    end
  end

end
