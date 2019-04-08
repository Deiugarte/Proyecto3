class Api::V1::ReviewsController < Api::V1::ApiController

  before_action :set_place
  before_action :set_review, only: %i[show update destroy]

  def index
    @reviews = @place.reviews

    json_response(@reviews)
  end

  def show
    json_response(@review)
  end

  def create
    @review = current_user.reviews.new(review_params)
    @review.place = @place

    if @review.save
      json_response(@review, 201)
    else
      json_response(@review.errors, 422)
    end
  end

  def update
    @review = current_user.reviews.new(review_params)
    @review.place = @place
    if @review.update(review_params)
      json_response(@review)
    else
      json_response(@review.errors, 422)
    end
  end

  def destroy
    json_response(@review.destroy, 204)
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_place
    @place = Place.find(params[:place_id])
  end

  def review_params
    params.require(:review).permit(:quality, :service,
                                   :price, :average_score)
  end

end
