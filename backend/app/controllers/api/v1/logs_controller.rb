class Api::V1::LogsController < Api::V1::ApiController

  before_action :authenticate_user!, only: :create

  def index
    @logs = Log.all

    json_response(@logs)
  end

  def show
    @log = Log.find(params[:id])

    json_response(@log)
  end

  def create
    @log = current_user.logs.new(log_params)
    place = Place.find_by(latitude: params[:latitude], longitude: params[:longitude])
    @log.place = place unless place.nil?

    if @log.save
      json_response(@log, 201)
    else
      json_response(@log.errors, 422)
    end
  end

  private

  def log_params
    params.require(:log).permit(:description, :latitude, :longitude)
  end

end
