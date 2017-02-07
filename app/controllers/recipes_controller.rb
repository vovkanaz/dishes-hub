class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @categories = Category.all
  end
end
