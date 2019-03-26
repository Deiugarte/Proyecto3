class Api::V1::DistrictsController < Api::V1::ApiController

  before_action :set_district, only: %i[show update destroy]

  def index
    @districts = District.all

    json_response(@districts)
  end

  def show
    json_response(@district)
  end

  def create
    @district = District.new(district_params)

    if @district.save
      json_response(@district, 201)
    else
      json_response(@district.errors, 422)
    end
  end

  def update
    if @district.update(district_params)
      json_response(@district)
    else
      json_response(@district.errors, 422)
    end
  end

  def destroy
    json_response(@district.destroy, 204)
  end

  private

  def set_district
    @district = District.find(params[:id])
  end

  def district_params
    params.require(:district).permit(:name, :description, :canton_id)
  end

end
