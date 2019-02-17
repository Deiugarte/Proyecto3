class Api::V1::CantonsController < Api::V1::ApiController

  before_action :set_canton, only: %i[show update destroy]

  def index
    @cantons = Canton.all

    render json: @cantons
  end

  def show
    render json: @canton
  end

  def create
    @canton = Canton.new(canton_params)

    if @canton.save
      render json: @canton, status: :created, location: api_v1_place_url(@canton)
    else
      render json: @canton.errors, status: :unprocessable_entity
    end
  end

  def update
    if @canton.update(canton_params)
      render json: @canton
    else
      render json: @canton.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @canton.destroy
  end

  private

  def set_canton
    @canton = Canton.find(params[:id])
  end

  def canton_params
    params.require(:canton).permit(
      :name,
      :description,
      :province_id,
    )
  end

end
