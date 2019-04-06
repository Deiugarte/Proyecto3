class Api::V1::CategoriesController < Api::V1::ApiController

  before_action :set_category, only: %i[show update destroy]

  def index
    @categories = Category.all

    json_response(@categories)
  end

  def show
    json_response(@category)
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      json_response(@category, 201)
    else
      json_response(@category.errors, 422)
    end
  end

  def update
    if @category.update(category_params)
      json_response(@category)
    else
      json_response(@category.errors, 422)
    end
  end

  def destroy
    json_response(@category.destroy, 204)
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end

end
