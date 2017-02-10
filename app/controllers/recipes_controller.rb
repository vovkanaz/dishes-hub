class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @categories = Category.all
    @recipe = Recipe.new
  end

  def create
  #   @categories = Category.new(params.require(:categories).permit(:title))
  #   @categories.save
  #   redirect_to @categories
   end
end
