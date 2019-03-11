class Api::V1::LogsController < Api::V1::ApiController

  before_action :authenticate_user!, only: :create

  def index
    @logs = Log.all

    render json: @logs
  end

  def show
    @log = Log.find(params[:id])

    render json: @log
  end

  def create
    @log = current_user.logs.new(log_params)
    place = Place.find_by(latitude: params[:latitude], longitude: params[:longitude])
    @log.place = place unless place.nil?

    if @log.save
      render json: @log, status: :created, location: api_v1_log_url(@log)
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  private

  def log_params
    params.require(:log).permit(:description, :latitude, :longitude)
  end

end
