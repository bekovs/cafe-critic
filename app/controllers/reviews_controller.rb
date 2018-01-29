class ReviewsController < ApplicationController
  def create
    @shop = Shop.find(params[:shop_id])
    @review = @shop.reviews.create(review_params)

    respond_to do |format|
      format.html { redirect_to @shop }
      format.js { }
    end
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :body, :rating, :shop_id)
  end
end
