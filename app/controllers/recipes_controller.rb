class RecipesController < ApplicationController
  allow_unauthenticated_access only: [:index, :show]
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]
  def index
    @recipes = Recipe.all
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def update
    @recipe = Recipe.find(params[:id])

    # 1. Håndter billeder manuelt med .attach
    if params[:recipe][:images].present?
      @recipe.images.attach(params[:recipe][:images])
    end

    # 2. Opdater resten af felterne (uden images, da de er fjernet fra recipe_params)
    if @recipe.update(recipe_params.except(:images))
      redirect_to @recipe, notice: "Opskrift opdateret!"
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
  def create
    @recipe = Current.user.recipes.build(recipe_params)
    if @recipe.save
      redirect_to @recipe, notice: "Recipe created successfully"
    else
      render :new
    end
  end

  def delete_image
    @recipe = Recipe.find(params[:id])
    @image = @recipe.images.find_by(id: params[:image_id])
    @image.purge

    if @image
      @image.purge
      redirect_to edit_recipe_path(@recipe), notice: "Billedet blev slettet."
    else
      redirect_to edit_recipe_path(@recipe), alert: "Billedet kunne ikke findes."
    end
  end

  def authorize_user!
    redirect_to recipes_path, alert:"Not authorized" unless @recipe.user == Current.user
  end
  private

  def recipe_params
    params.require(:recipe).permit(
    :title,
    :instructions,
    :content,
    images: []
    )
  end

end
