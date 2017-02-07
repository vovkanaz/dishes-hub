class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @recipes = @category.recipes
  end

  def new
  end

  def create
    @categories = Category.new(params.require(:categories).permit(:title))
    @categories.save
    redirect_to @categories
  end
end
