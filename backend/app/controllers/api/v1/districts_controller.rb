class Api::V1::DistrictsController < Api::V1::ApiController

  before_action :set_district, only: %i[show update destroy]

  def index
    @districts = District.all

    render json: @districts
  end

  def show
    render json: @district
  end

  def create
    @district = District.new(district_params)

    if @district.save
      render json: @district, status: :created, location: api_v1_district_url(@district)
    else
      render json: @district.errors, status: :unprocessable_entity
    end
  end

  def update
    if @district.update(district_params)
      render json: @district
    else
      render json: @district.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @district.destroy
  end

  private

  def set_district
    @district = District.find(params[:id])
  end

  def district_params
    params.require(:district).permit(
      :name,
      :description,
      :canton_id,
    )
  end

end
