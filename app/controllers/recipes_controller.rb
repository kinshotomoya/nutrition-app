class RecipesController < ApplicationController
  def index
  end

  def new
    @user = User.find(current_user.id)
    @recipe = Recipe.new
    # @food_recipe = FoodRecipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      food_recipe = FoodRecipe.last
      Recipe.create_amount_content(params, food_recipe)
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def show
  end

  private

  def amount_params
    params.require(:recipe).permit(amounts: [])
  end
  def recipe_params
    params.require(:recipe).permit(:name, :image, {food_ids: []}).merge(user_id: params[:user_id])
  end
end
