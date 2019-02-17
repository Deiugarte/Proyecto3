class Api::V1::PlacesController < Api::V1::ApiController

  before_action :set_place, only: %i[show update destroy]

  def index
    @places = Place.all

    render json: @places
  end

  def show
    render json: @place
  end

  def create
    @place = Place.new(place_params)

    if @place.save
      render json: @place, status: :created, location: api_v1_place_url(@place)
    else
      render json: @place.errors, status: :unprocessable_entity
    end
  end

  def update
    if @place.update(place_params)
      render json: @place
    else
      render json: @place.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @place.destroy
  end

  private

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(
      :name,
      :telephone,
      :email,
      :latitude,
      :longitude,
      :province_id,
      :canton_id,
      :district_id,
    )
  end

end
