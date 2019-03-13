class Api::V1::ReviewsController < Api::V1::ApiController

  before_action :set_place
  before_action :set_review, only: %i[show update destroy]

  # GET /api/v1/reviews
  def index
    @reviews = @place.reviews

    render json: @reviews
  end

  # GET /api/v1/reviews/1
  def show
    render json: @review
  end

  # POST /api/v1/reviews
  def create
    #binding.pry
    #@review = @place.reviews.new(review_params)
    @review = current_user.reviews.new(review_params)
    @review.place = @place

    if @review.save
      render json: @review, status: :created, location: api_v1_place_review_url(@place, @review)
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/reviews/1
  def update
    @review = current_user.reviews.new(review_params)
    @review.place = @place
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/reviews/1
  def destroy
    @review.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = Review.find(params[:id])
  end

  def set_place
    @place = Place.find(params[:place_id])
  end

  # Only allow a trusted parameter "white list" through.
  def review_params
    params.require(:review).permit(:quality, :service, 
    :price, :average_score)
  end

end
