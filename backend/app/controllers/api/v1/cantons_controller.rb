class Api::V1::CantonsController < Api::V1::ApiController

  before_action :set_canton, only: %i[show update destroy]

  def index
    @cantons = Canton.all

    json_response(@cantons)
  end

  def show
    json_response(@canton)
  end

  def create
    @canton = Canton.new(canton_params)

    if @canton.save
      json_response(@canton, 201)
    else
      json_response(@canton.errors, 422)
    end
  end

  def update
    if @canton.update(canton_params)
      json_response(@canton)
    else
      json_response(@canton.errors, 422)
    end
  end

  def destroy
    json_response(@canton.destroy, 204)
  end

  private

  def set_canton
    @canton = Canton.find(params[:id])
  end

  def canton_params
    params.require(:canton).permit(:name, :description, :province_id)
  end

end
