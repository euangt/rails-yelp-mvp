class RestaurantsController < ApplicationController
  
  def index 
    @restaurants = Restaurant.all
  end 
  
  def show 
    @restaurant = Restaurant.find(params[:id])  
  end 

  def new
    @restaurant = Restaurant.new 
  end 

  def create 
    @restaurant = Restaurant.new(strong_params)
    if @restaurant.save
      redirect_to restaurants_path 
    else
      render :new
    end      
  end

  def strong_params
    params.require(:restaurant).permit(:name, :phone_number, :address, :category)
  end
  
end
