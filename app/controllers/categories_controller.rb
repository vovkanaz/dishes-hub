class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

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
