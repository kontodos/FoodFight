class PagesController < ApplicationController

 def home
	@restaurants = Restaurant.all
  end

  def about
  end

  def contact
  end

  def foodfight
  end

  def login
  end
  
end
