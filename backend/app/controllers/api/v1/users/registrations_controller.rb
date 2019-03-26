# frozen_string_literal: true

class Api::V1::Users::RegistrationsController < DeviseTokenAuth::RegistrationsController

  before_action :set_resource, only: %i[update destroy]

  def update
    super
  end

  def destroy
    super
  end

  private

  def sign_up_params
    user_params
  end

  def account_update_params
    user_params
  end

  def user_params
    params.require(:registration).permit(:email, :username, :password, :password_confirmation, person_attributes: person)
  end

  def person
    %i[
      first_name
      last_name
      birth_date
      phone
      gender
    ]
  end

  def set_resource
    @resource = User.find(params[:registration][:user_id])
  end

end
