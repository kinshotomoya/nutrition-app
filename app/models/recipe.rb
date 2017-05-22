class Recipe < ApplicationRecord
  belongs_to :user
  has_many :food_recipes
  has_many :foods, through: :food_recipes
  mount_uploader :image, ImageUploader

  def self.create_amount_content(params, food_recipe)
    @food_recipes = FoodRecipe.where(recipe_id: food_recipe.recipe_id)
    i = 0
    @food_recipes.each do |fr|
      fr.update(amount: params[:recipe][:amounts][i])
      i += 1
    end
  end

  def get_amount_value(recipe, rf)
    food_recipe = FoodRecipe.find_by(food_id: rf.id, recipe_id: recipe.id)
    return food_recipe.amount
    # return food_recipe.amount
  end

end
