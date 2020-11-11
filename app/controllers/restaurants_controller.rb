class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.new(params.require(:restaurant).permit(:name, :address, :phone_number, :category))
    restaurant.save

    redirect_to root_path
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end
end
