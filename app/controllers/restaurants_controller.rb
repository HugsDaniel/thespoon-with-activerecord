class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    # 1. Récupérer tous les restaurants => MODEL
    @restaurants = Restaurant.all
  end

  def show
    # ------- set_restaurant --------
    # 1. Retrouver le resto correspondant à l'id
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :addresss, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end





