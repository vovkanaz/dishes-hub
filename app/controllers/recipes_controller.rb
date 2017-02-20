class RecipesController < ApplicationController

    before_action :authenticate_user!, except: [:show, :index]

  def index
    @recipes = Recipe.all
  end
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @categories = Category.all
    #@recipe = current_user.recipes.build
   end

  def create
    @categories = Category.all
    puts "____________________________________"
    puts recipe_params
    puts "____________________________________"
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    if @recipe.save
       flash[:notice] = "Successfully created recipe."
       redirect_to recipe_path(@recipe.id)
     else
       render 'new'
     end
  end

  private

  def recipe_params
    params.require(:recipes).permit(:category_id, current_user.id, recipes_attributes: [:name, :manual])
  end

end
