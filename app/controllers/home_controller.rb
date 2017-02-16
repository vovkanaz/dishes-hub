class HomeController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def about
  end
  
end
