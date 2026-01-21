class FavoritesController < ApplicationController
  before_action :set_recipe, only: [:create, :destroy]

  def create
    Current.user.favorites.create!(recipe: @recipe)
    redirect_to @recipe
  end

  def destroy
    Current.user.favorites.find_by(recipe: @recipe)&.destroy
    redirect_to @recipe
  end

  def index
    @favorites = Current.user.favorite_recipes
  end
  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
