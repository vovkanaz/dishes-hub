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
     render plain: params[:recipes].inspect
  #      @recipes = Recipe.new(params.require(:recipes).permit(:category_id, :name, :ingredients, :manual))
  #      @recipes.save
  #     redirect_to @recipes
  end

   def published_post
      Time.now
   end
end
