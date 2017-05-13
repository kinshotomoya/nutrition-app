class AddIndexFoodNutritiveId < ActiveRecord::Migration[5.0]
  def change
    add_index :foods, :nutritive_id
  end
end
