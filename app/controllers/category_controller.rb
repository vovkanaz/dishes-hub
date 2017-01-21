class CategoryController < ApplicationController
  def index
    @categories = Category.find(1)
    @category_recipes = @categories.recipes
  end
end
