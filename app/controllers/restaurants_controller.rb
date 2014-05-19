class RestaurantsController < ApplicationController



  def index
	@restaurants = Restaurant.all
  end

  def new
	@restaurant = Restaurant.new
  end
  
  def create
	@restaurant = Restaurant.new
	@restaurant.name = params[:restaurant][:name]
	@restaurant.contact = params[:restaurant][:contact]
	@restaurant.address = params[:restaurant][:address]
	@restaurant.description = params[:restaurant][:description]
	@restaurant.foods = []
	@restaurant.save!
	
	redirect_to :restaurants
  end

  def show
	@restaurant = Restaurant.find(params[:id])
  end

  def edit
	@restaurants = Restaurant.find(params[:id])
  end
  
  def update
	@restaurant = Restaurant.find(params[:id])
	@restaurant.name = params[:restaurant][:name]
	@restaurant.contact = params[:restaurant][:contact]
	@restaurant.address = params[:restaurant][:address]
	@restaurant.description = params[:restaurant][:description]
	@restaurant.save!
	@restaurants = Restaurant.all
	render :index
  end


  def addfood
	@restaurant = Restaurant.find(params[:id])
	@food = Food.new
  end
  
  def createfood
	@restaurant = Restaurant.find(params[:id])
	@food = Food.new
	@food.name = params[:food][:name]
	@food.price = params[:food][:price]
	@food.description = params[:food][:description]
	
	@restaurant.foods << @food
	@restaurant.save!
		
	@restaurants = Restaurant.all
		
	redirect_to :restaurants
  end
  

end
