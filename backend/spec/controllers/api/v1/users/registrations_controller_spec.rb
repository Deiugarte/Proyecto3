require "rails_helper"

RSpec.describe Api::V1::Users::RegistrationsController, type: :controller do
  include Docs::V1::Authentication::Api

  before do
    request.env["devise.mapping"] = Devise.mappings[:user]
  end

  describe "triggers .configure_permitted_parameters" do
    let(:user) { create :user }

    context "when the username is present" do
      it "expects user to have an username" do
        expect(user.username).to be_present
      end
    end

    context "when the username is not present" do
      it "expects to show an error message" do
        expect { create(:user, :without_username) }.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end

  describe "POST #create" do
    include Docs::V1::Authentication::UserRegistration

    context "when user has personal information", :dox do
      let!(:user_params) do
        {
          registration: {
            email: "billgates@email.com",
            username: "billgates",
            password: "password",
            password_confirmation: "password",
            person_attributes: {
              first_name: "Bill",
              last_name: "Gates",
              birth_date: "12-12-2000",
              phone_number: "1234567890",
            },
          },
        }
      end

      it "creates a person for that user" do
        post :create, params: user_params

        user = assigns(:resource)

        expect(user.person).to be_present
      end

      it "returns status code ok" do
        post :create, params: user_params

        expect(response).to have_http_status(:ok)
      end
    end

    context "when user has no personal information", :dox do
      let!(:user_without_person_params) do
        {
          registration: {
            email: "billgates@email.com",
            username: "billgates",
            password: "password",
            password_confirmation: "password",
          },
        }
      end

      it "creates an empty person for that user" do
        post :create, params: user_without_person_params

        user = assigns(:resource)

        expect(user.person).to be_nil
      end

      it "returns status code ok" do
        post :create, params: user_without_person_params

        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe "PUT #update" do
    include Docs::V1::Authentication::EditUserRegistration

    let(:user) { create :user }
    let(:person) { create :person, user: user }
    let(:user_id) { user.id }

    context "when user updates his/her information", :dox do
      let!(:update_user_with_person_params) do
        {
          registration: {
            user_id: user_id,
            person_attributes: {
              first_name: "my_new_first_name",
            },
          },
        }
      end

      it "also updates his personal information" do
        put :update, params: update_user_with_person_params

        user = assigns(:resource)

        expect(user.person.first_name).to eq("my_new_first_name")
      end
    end
  end

  describe "DELETE #destroy" do
    let(:user) { create :user }
    let(:person) { create :person, user: user }
    let(:user_id) { user.id }

    context "when user exists" do
      let!(:delete_params) do
        {
          registration: {
            user_id: user_id,
          },
        }
      end

      it "also deletes the personal information" do
        expect do
          delete :destroy, params: delete_params
        end.to change(Person, :count).by(0)
      end

      it "returns status 200" do
        expect(response).to have_http_status(:ok)
      end
    end

    context "when user does not exist" do
      it "raises an error" do
        expect do
          create(:person)
        end.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end

end
