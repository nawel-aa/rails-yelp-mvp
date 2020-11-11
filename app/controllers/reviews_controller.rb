class ReviewsController < ApplicationController
  def create
    @review = Review.new(params.require(:review).permit(:rating, :content))
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
    end
  end
end
