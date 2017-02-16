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
    @recipe = current_user.recipes.build
   end

  def create
    @categories = Category.all
    @recipe = current_user.recipes.create(recipe_params)
     if @recipe.save
       flash[:notice] = "Successfully created recipe."
       redirect_to recipe_path(@recipe.id)
     else
       render 'new'
     end
  end

  private

  def recipe_params
  params.require(:recipe).permit(:category_id, :user_id, :name, :manual)
  end

end
