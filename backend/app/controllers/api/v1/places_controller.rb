class Api::V1::PlacesController < Api::V1::ApiController

  before_action :set_place, only: %i[show update destroy nearby]

  def index
    @places = Place.all

    json_response(@places)
  end

  def show
    json_response(@place)
  end

  def create
    @place = Place.new(place_params)

    if @place.save
      json_response(@place, 201)
    else
      json_response(@place.errors, 422)
    end
  end

  def update
    if @place.update(place_params)
      json_response(@place)
    else
      json_response(@place.errors, 422)
    end
  end

  def destroy
    json_response(@place.destroy, 204)
  end

  def nearby
    json_response(@place.nearbys(10))
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
