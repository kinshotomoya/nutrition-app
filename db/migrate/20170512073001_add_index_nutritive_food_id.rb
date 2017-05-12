class AddIndexNutritiveFoodId < ActiveRecord::Migration[5.0]
  def change
    add_index :nutritives, :food_id
  end
end
