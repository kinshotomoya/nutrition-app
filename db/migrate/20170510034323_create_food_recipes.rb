class CreateFoodRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :food_recipes do |t|
      t.references :food, null: false
      t.references :recipe, null: false
      t.integer :amount, null: false

      t.timestamps
    end
  end
end
